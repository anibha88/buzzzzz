class Gossip < ActiveRecord::Base

  has_attached_file :image,
    styles: { medium: "1000x1000>", thumb: "1000x1000>" },
    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image,
    content_type: /\Aimage\/.*\Z/
  validate :image_dimensions

  belongs_to :category
  self.inheritance_column = :gossip_type
  scope :artists, -> { where(gossip_type: 'Picture') } 
  scope :models, -> { where(gossip_type: 'Article') } 

   def self.gossip_types
      %w(Picture Article)
   end

    private

 def image_dimensions
   required_width  = 2500
   required_height = 2500
   dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)

   errors.add(:image, "Width must be #{width}px") unless dimensions.width != required_width
   errors.add(:image, "Height must be #{height}px") unless dimensions.height != required_height
 end
end

class Article < Gossip; end 
class Picture < Gossip; end 
