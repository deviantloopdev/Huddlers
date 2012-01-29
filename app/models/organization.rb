class Organization < ActiveRecord::Base
  belongs_to :user #Admin  
  # has_one :huddlers_card
  # has_many :users #Folowers
  
  # has_many :pictures
  # has_many :posts

  attr_accessible :user_id, :organization_name
end
