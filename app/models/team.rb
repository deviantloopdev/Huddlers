class Team < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  validates_presence_of :team_name
  attr_accessible :team_name, :description
end
