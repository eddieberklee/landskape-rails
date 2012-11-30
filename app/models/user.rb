class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :city, :state, :bio

  has_many :photos
  has_many :comments
  has_many :likes
end
