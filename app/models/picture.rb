class Picture < ActiveRecord::Base
  attr_accessible :name, :image
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
