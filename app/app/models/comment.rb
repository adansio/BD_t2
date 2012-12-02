class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id, :user_id

  belongs_to :user and belongs_to :post

  make_flaggable :like, :unlike
end
