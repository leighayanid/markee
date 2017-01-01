class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :links
  has_many :categories
  has_one :profile

  # associate a profile to user during registration
  before_create :build_profile

  #include gravtastic gem to use gravatar
  include Gravtastic
  gravtastic
  
end
