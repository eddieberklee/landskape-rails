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
    :title => "Sunrise",
    :city => "Berkeley",
    :state => "California",
    :description => "Sunrise in Orange Beach, AL.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #2
    :user_id => 1,
    :photo => File.open("sample-photos/Alabama/img_002.jpg"),
    :title => "Sunset",
    :city => "Berkeley",
    :state => "California",
    :description => "Sunset on Weiss Lake, Cherokee, AL.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #3
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_001.jpg"),
    :title => "Ponds and Trees",
    :city => "Berkeley",
    :state => "California",
    :description => "Scenic wilderness landscape, Homer, AK",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #4
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_002.jpg"),
    :title => "Autumn landscape",
    :city => "Berkeley",
    :state => "California",
    :description => "Tundra Landscape in Autumn, Denali National Park, AK",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #5
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_003.jpg"),
    :title => "Reflection Peak",
    :city => "Berkeley",
    :state => "California",
    :description => "Reflection Peak in Wrangell, AK.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #6
    :user_id => 1,
    :photo => File.open("sample-photos/Alaska/img_004.jpg"),
    :title => "River and Mountains",
    :city => "Berkeley",
    :state => "California",
    :description => "River and mountains in Kenai Peninsula Borough, AK.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #7
    :user_id => 1,
    :photo => File.open("sample-photos/Arizona/img_001.jpg"),
    :title => "Horse Shoe",
    :city => "Berkeley",
    :state => "California",
    :description => "Horse Shoe in Glen Canyon National Recreation Area, AZ.",
    :latitude => 38,
    :longitude => -122
})
photos.push({ # #8
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_002.jpg"),
            :title => "Painted Desert",
            :city => "Berkeley",
            :state => "California",
            :description => "Painted Desert in Petrified Forest National Park, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #9
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_003.jpg"),
            :title => "Monument Valley",
            :city => "Berkeley",
            :state => "California",
            :description => "Monument Valley Navajo Tribal Park, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #10
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_004.jpg"),
            :title => "Cloudy",
            :city => "Berkeley",
            :state => "California",
            :description => "Navajo Nation's Monument Valley Park, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #11
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_005.jpg"),
            :title => "Desert with Rock",
            :city => "Berkeley",
            :state => "California",
            :description => "Desert Landscape with Rock Formations in Monument Valley, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #12
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_006.jpg"),
            :title => "Moon over a Landscape",
            :city => "Berkeley",
            :state => "California",
            :description => "Moon over a Landscape. Taken in Monument Valley Navajo Tribal Park, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #13
            :user_id => 1,
            :photo => File.open("sample-photos/Arizona/img_007.jpg"),
            :title => "Cactus",
            :city => "Berkeley",
            :state => "California",
            :description => "Desert Landscape & Cacti Desert Botanical Garden, AZ.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #14
            :user_id => 1,
            :photo => File.open("sample-photos/Arkansas/img_001.jpg"),
            :title => "Woolsey Bridge",
            :city => "Berkeley",
            :state => "California",
            :description => "Woolsey Bridge in Washington, AR.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #15
            :user_id => 1,
            :photo => File.open("sample-photos/Arkansas/img_002.jpg"),
            :title => "White River",
            :city => "Berkeley",
            :state => "California",
            :description => "White River in Monticello, AR.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #16
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_001.jpg"),
            :title => "Reflection and sunrise",
            :city => "Berkeley",
            :state => "California",
            :description => "Reflection of Longs Peak at sunrise in Bear Lake, CO.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #17
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_002.jpg"),
            :title => "Reflection and Mountains",
            :city => "Berkeley",
            :state => "California",
            :description => "Landscape in Aspen, CO.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #18
            :user_id => 1,
            :photo => File.open("sample-photos/Colorado/img_003.jpg"),
            :title => "Sand and Rock",
            :city => "Berkeley",
            :state => "California",
            :description => "Monolith on a landscape in Ute Mountain Tribal Park, CO.",
            :latitude => 38,
            :longitude => -122
            })
photos.push({ # #19
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_001.jpg"),
            :title => "Tioga Lake",
            :city => "New York City",
            :state => "New York",
            :description => "Tioga Lake in Lee Vining, CA.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #20
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_002.jpg"),
            :title => "Unpredictable",
            :city => "New York City",
            :state => "New York",
            :description => "Hermosa Beach in Los Angeles, CA.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #21
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_003.jpg"),
            :title => "Precipice",
            :city => "New York City",
            :state => "New York",
            :description => "Sunset at the Marin headlands in Marin, CA",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #22
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_004.jpg"),
            :title => "Sunset",
            :city => "New York City",
            :state => "New York",
            :description => "Pigeon Point Lighthouse in South Coastside, CA.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #23
            :user_id => 2,
            :photo => File.open("sample-photos/California/img_005.jpg"),
            :title => "Blue and Green",
            :city => "New York City",
            :state => "New York",
            :description => "Fall Landscape in Yosemite, CA.",
            :latitude => 41,
            :longitude => -74
            })
photos.push({ # #24
            :user_id => 3,
            :photo => File.open("sample-photos/Connecticut/img_001.jpg"),
            :title => "Storming",
            :city => "Houston",
            :state => "Texas",
            :description => "Storm over Long Island in Stratford, CT.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #25
            :user_id => 3,
            :photo => File.open("sample-photos/Connecticut/img_002.jpg"),
            :title => "Small Island",
            :city => "Houston",
            :state => "Texas",
            :description => "Hubbard Park in Meriden, CT.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #26
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_001.jpg"),
            :title => "Footprint",
            :city => "Houston",
            :state => "Texas",
            :description => "Vero Beach near Indian River, FL.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #27
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_002.jpg"),
            :title => "Sunset",
            :city => "Houston",
            :state => "Texas",
            :description => "Sunset in St. Augustine.m Augustine, FL.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #28
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_003.jpg"),
            :title => "Sunrise",
            :city => "Houston",
            :state => "Texas",
            :description => "Sunrise in Ft. Lauderdale, FL.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #29
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_004.jpg"),
            :title => "Blocked Light",
            :city => "Houston",
            :state => "Texas",
            :description => "North Miami Beach in Miami, FL.",
            :latitude => 30,
            :longitude => -95
            })
photos.push({ # #30
            :user_id => 3,
            :photo => File.open("sample-photos/Florida/img_005.jpg"),
            :title => "Reflection waves",
            :city => "Houston",
            :state => "Texas",
            :description => "Orlando City Landscape in Orlando, FL.",
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
