class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :city, :state, :bio
<<<<<<< HEAD
=======
  before_validation :prepare_password

  validates_presence_of :username
  validates_uniqueness_of :username, :allow_blank => false
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"
  validates_presence_of :password_hash, :on => :create
  validates_presence_of :password_salt, :on => :create
>>>>>>> 9f6c9e1da337c6ff8b71f2c2fb0ab1f00aac73cd

  has_many :photos
  has_many :comments
  has_many :likes
<<<<<<< HEAD
=======

  validate :username_is_valid

  #def initialize(*args)
  #  args.each do |a|
  #    puts a
  #  end
  #end

  def username_is_valid
    if self.username == nil; errors.add(:username, "The username was not set.");return; end
    if not self.username.instance_of? String; errors.add(:username, "The username should be a string.");return;end
    if self.username.length < 3 then
      errors.add(:username, "The username must be at least three characters long.")
    end
    user = User.find_by_username self.username
    if user and user != self
      errors.add(:username, "The username already exists in the database.")
      return false
    end
    return true
  end

  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login)
    return user if user && user.matching_password?(pass)

    #Failure, the username was invalid or the password didn't match.
    return nil
    #redirect_to logins_url
  end

  def matching_password?(pass)
    puts self.password_hash
    puts encrypt_password(pass)
    self.password_hash == encrypt_password(pass)
  end

  def password=(p)
    @password = p
  end

  def encrypt_password(pass)
    Digest::SHA2.hexdigest([pass, password_salt].join)
  end

  private
  def prepare_password
    unless @password.blank?
      self.password_salt = Digest::SHA2.hexdigest([Time.now, rand].join)
      self.password_hash = encrypt_password(@password)
    end
  end

>>>>>>> 9f6c9e1da337c6ff8b71f2c2fb0ab1f00aac73cd
end
