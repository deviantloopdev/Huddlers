class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name,
                  :height_ft, :height_in, :weight, :age, :city
  
  validates_presence_of :first_name, :last_name
  has_one :huddlers_card
  belongs_to :organization
  has_many :organizations
  has_many :pictures
  has_many :posts
end
