class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments, through: :user

  def post
  end

  def description
  end

  def subject
  end
end
