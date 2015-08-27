class News < ActiveRecord::Base
	belongs_to :category 
	self.inheritance_column = :news_type

	scope :local_news, -> { where(news_type: 'LocalNews') } 
	scope :national_news, -> { where(news_type: 'NationalNews') } 
	scope :international_news, -> { where(news_type: 'InternationalNews') }

	def self.news_type
      %w(LocalNews NationalNews InternationalNews)
    end

    def self.search(query)
	  where("heading ILIKE ?", "%#{query}%") 
	  where("description ILIKE ?", "%#{query}%")
	end

end

class LocalNews < News; end 
class NationalNews < News; end 
class InternationalNews < News; end
