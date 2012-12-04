# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#require 'ostruct'

puts "Seeding..."

users = []
users.push({
  :username => "user",
  :city => "Berkeley",
  :state => "California",
  :bio => "I am a test user, and this is my bio",
  :password => "pass",
  :latitude => 38,
  :longitude => 122
})
users.each do |u|
  created_user = User.create_new_user(u)
  puts "Created user", created_user
end

photos = []
photos.push({
    :user_id => 1,
    :photo_file_file_name => "fake_file_path/fake_photo1.png",
    :title => "Phake Foto 1",
    :city => "Berkeley",
    :state => "California",
    :description => "A fake photo to trick the users into thinking there is content.",
    :latitude => 38,
    :longitude => 122
})
photos.push({
    :user_id => 1,
    :photo_file_file_name => "fake_file_path/fake_photo2.png",
    :title => "Phake Foto 2",
    :city => "Berkeley",
    :state => "California",
    :description => "A fake photo to trick the users into thinking there is content again.",
    :latitude => 38,
    :longitude => 122
})
photos.each do |p|
  created_photo = Photo.create(p);
  puts "Created photo", created_photo
end






puts "Seeding Done!"
