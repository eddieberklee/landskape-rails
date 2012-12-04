class Photo < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :user_id, :title, :city, :state, :description, :photo
  attr_accessor :photo_file_file_name, :photo_file_content_type, :photo_file_file_size, :photo_file_updated_at

  validates_presence_of :user_id
  validates_presence_of :title
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :description

  has_many :comments
  has_many :likes
  belongs_to :user

  has_attached_file :photo

end
