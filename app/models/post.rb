class Post < ActiveRecord::Base
  attr_accessible :title, :content, :votes_count
  
  belongs_to :user
  has_many :votes, :dependent => :destroy
  
  scope :recent, order('created_at DESC')
  scope :alphabetical, order('title ASC')
  scope :popular, order('votes_count DESC')
  
  def votes_count
    read_attribute(:votes_count).presence || 0
  end
  
end
