class Organization < ActiveRecord::Base
  # belongs_to :user #Admin  
  # has_one :huddlers_card
  # has_many :users #Folowers
  
  # has_many :pictures
  # has_many :posts
  
  has_and_belongs_to_many :users
  
  attr_accessible :organization_name
end
