class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :city, :state, :bio
  before_save :prepare_password

  validates_presence_of :username
  validates_uniqueness_of :username, :allow_blank => false
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"
  validates_presence_of :password_hash, :on => :create
  validates_presence_of :password_salt, :on => :create

  has_many :photos
  has_many :comments
  has_many :likes

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
    user = find_by_username self.username
    if user != self
      errors.add(:username, "The username already exists in the database.")
      return false
    end
  end

  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login)
    return user if user && user.matching_password?(pass)

    #Failure, the username was invalid or the password didn't match.
    return nil
    #redirect_to logins_url
  end

  def prepare_password
    puts "Preparing password"
    unless password.blank?
      self.password_salt = Digest::SHA2.hexdigest([Time.now, rand].join)
      self.password_hash = encrypt_password(password)
    end
  end

  def encrypt_password(pass)
    Digest::SHA2.hexdigest([pass, password_salt].join)
  end

  def matching_password?(pass)
    self.password_hash == encrypt_password(pass)
  end
end
