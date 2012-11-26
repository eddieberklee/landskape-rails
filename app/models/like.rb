class Like < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  #attr_accessible :username, :email,:password, :password_confirmation
  attr_accessible :user_id, :photo_id

  validates_presence_of :user_id
  validates_presence_of :photo_id
  validates_uniqueness_of :user_id, :photo_id

  belongs_to :user
  belongs_to :photo
end
