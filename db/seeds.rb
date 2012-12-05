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
  :longitude => -122
})
users.push({
           :username => "fred",
           :city => "New York City",
           :state => "New York",
           :bio => "I am test user2, and this is my bio",
           :password => "pass",
           :latitude => 41,
           :longitude => -74
           })
users.push({
           :username => "bob",
           :city => "Houston",
           :state => "Texas",
           :bio => "I am test user3, and this is my bio",
           :password => "pass",
           :latitude => 30,
           :longitude => -95
           })
users.each do |u|
  created_user = User.create_new_user(u)
  puts "Created user", created_user.username
end

photos = [] # #1-18 Berkeley, #19-23 NYC, #24-30 Houston
photos.push({ # #1
    :user_id => 1,
    :photo => File.open("sample-photos/Alabama/img_001.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Sunrise.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #2
    :user_id => 1,
    :photo => File.open("sample-photos/Alabama/img_002.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Landscape.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #3
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_001.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Scenic wilderness landscape.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #4
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_002.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Tundra Landscape in Autumn.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #5
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_003.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Reflection Peak.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #6
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_004.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Panoramic View of Landscape and Mountain Range.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #7
    :user_id => 1,
    :photo => File.open("sample-photos/Arizona/img_001.jpg"),
    :title => "Berkeley Landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Horse Shoe.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #8
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_002.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Grand Canyon.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #9
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_003.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Monument Valley.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #10
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_004.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Grand Canyon National Park Landscape.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #11
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_005.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Desert Landscape with Rock Formations in Monument Valley.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #12
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_006.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Moon over a Landscape. Taken in Monument Valley Navajo Tribal Park.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #13
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_007.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Desert Landscape & Cacti Desert Botanical Garden.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #14
            :user_id => 1,
            :photo => File.open("sample-photos/Arkansas/img_001.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Woolsey Bridge.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #15
            :user_id => 1,
            :photo => File.open("sample-photos/Arkansas/img_002.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "White River.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #16
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_001.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Reflection of Longs Peak at sunrise.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #17
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_002.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Landscape.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #18
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_003.jpg"),
            :title => "Berkeley Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Monolith on a landscape.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #19
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_001.jpg"),
            :title => "New York City Landscape",
            :city => "New York City",
            :state => "New York",
            :description => "Golden Gate Bridge.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #20
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_002.jpg"),
            :title => "New York City Landscape",
            :city => "New York City",
            :state => "New York",
            :description => "Beautiful napa valley landscape.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #21
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_003.jpg"),
            :title => "New York City Landscape",
            :city => "New York City",
            :state => "New York",
            :description => "Aerial of snowy mountain landscape with frozen lake in Inyo National Forest.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #22
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_004.jpg"),
            :title => "New York City Landscape",
            :city => "New York City",
            :state => "New York",
            :description => "Night view of San Francisco.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #23
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_005.jpg"),
            :title => "New York City Landscape",
            :city => "New York City",
            :state => "New York",
            :description => "Fall Landscape.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #24
            :user_id => 3,
            :photo => File.open("sample-photos/Connecticut/img_001.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Storm over Long Island.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #25
            :user_id => 3,
            :photo => File.open("sample-photos/Connecticut/img_002.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Hubbard Park.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #26
            :user_id => 3,
            :photo => File.open("sample-photos/Delaware/img_001.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Sunrise at Cape Henlopen.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #27
            :user_id => 3,
            :photo => File.open("sample-photos/Delaware/img_002.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Industrial Sunset.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #28
            :user_id => 3,
            :photo => File.open("sample-photos/Delaware/img_003.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Delaware River.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #29
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_001.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Miami Beach.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #30
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_002.jpg"),
            :title => "Houston Landscape",
            :city => "Houston",
            :state => "Texas",
            :description => "Trees on a Landscape.",
            :latitude => 30,
            :longitude => -95
            })
photos.each do |p|
  created_photo = Photo.new(p)
  created_photo.photo = p[:photo]
  created_photo.save
  puts "Created photo", created_photo.photo_file_name
end






puts "Seeding Done!"
