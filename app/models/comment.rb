class Comment < ActiveRecord::Base
  # belongs_to :user
  belongs_to :user
  # belongs_to :commenter

  def content
  end
end
