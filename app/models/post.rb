class Post < ActiveRecord::Base
  attr_accessible :title, :content
  
  belongs_to :user
  
  scope :recent, order('created_at DESC')
  scope :alphabetical, order('title ASC')
  
end
