class Photo < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :user_id, :title, :city, :state, :description, :file_location

  validates_presence_of :user_id
  validates_presence_of :title
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :description
  validates_presence_of :file_location

  has_many :comments
  has_many :likes
  belongs_to :user

end
