class Post < ActiveRecord::Base
  attr_accessible :category_ids, :content, :title, :user_id

  belongs_to :user
  has_many :comments

  has_and_belongs_to_many :categories
end
