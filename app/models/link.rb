class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments, through: :user  #, dependent: :destroy

end
