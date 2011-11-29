class Post < ActiveRecord::Base
  attr_accessible :title, :content, :link, :votes_count
  
  belongs_to :user
  has_many :votes, :dependent => :destroy
  
  scope :recent, order('created_at DESC')
  scope :alphabetical, order('title ASC')
  scope :popular, order('votes_count DESC')
    
end
