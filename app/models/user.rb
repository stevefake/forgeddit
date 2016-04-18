class User < ActiveRecord::Base
  has_many :links
  has_many :comments #, through: :links
  # has_many :commenters, through: :comments

  validates :email, presence: :true
  validates :password, confirmation: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(password)
    @password = BCrypt::Password.create(password)
    self.password_hash = @password
  end
end
