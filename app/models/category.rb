class Category < ActiveRecord::Base
  has_many :news
  has_many :gossips
  has_many :beauty_and_sexes
  delegate :local_news, :national_news, :internationa_news, to: :news
  delegate :artists, :models, to: :gossips
  delegate :beauties, :sexes,:teen_health, to: :beauty_and_sexes
end
