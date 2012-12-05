class Photo < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :user_id, :title, :city, :state, :description, :photo, :latitude, :longitude, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at

  validates_presence_of :user_id
  validates_presence_of :title
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :description

  has_many :comments
  has_many :likes
  belongs_to :user

  has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:id/:filename",

end
