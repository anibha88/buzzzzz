class BeautyAndSex < ActiveRecord::Base
  belongs_to :category
  self.inheritance_column = :beauty_and_sex_type
  scope :beauties, -> { where(beauty_and_sex_type: 'Beauty') } 
  scope :sexes, -> { where(beauty_and_sex_type: 'Sex') } 
  scope :teen_health, -> {where(beauty_and_sex_type: 'TeenHealth')}

   def self.types
      %w(Beauty Sex TeenHealth)
   end
end


class Beauty < BeautyAndSex; end 
class Sex < BeautyAndSex; end 
class TeenHealth < BeautyAndSex; end 
