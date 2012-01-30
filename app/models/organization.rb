class Organization < ActiveRecord::Base
  # belongs_to :user #Admin  
  # has_one :huddlers_card
  # has_many :users #Folowers
  
  # has_many :pictures
  # has_many :posts
  
  has_and_belongs_to_many :users
  
  validates_presence_of :organization_name
  attr_accessible :organization_name, :description, :contact_number, :street_address, :city, :state, :zipcode, :website
end
