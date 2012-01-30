class Team < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  attr_accessible :team_name, :description
end
