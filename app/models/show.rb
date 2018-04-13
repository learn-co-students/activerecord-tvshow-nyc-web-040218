class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    rate = self.highest_rating
    self.where("rating" => rate)[0]
  end
  def self.lowest_rating
    self.minimum(:rating)
  end
  def self.least_popular_show
    rate = self.lowest_rating
    self.where("rating" => rate)[0]
  end
  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.all.map {|item| item.rating > 5 ? item : nil }.compact
  end

  def self.shows_by_alphabetical_order
    self.all.sort {|a, b| a.name <=> b.name}
  end
end
