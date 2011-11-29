class Post < ActiveRecord::Base
  attr_accessible :title, :content, :link, :votes_count
  
  belongs_to :user
  has_many :votes, :dependent => :destroy
  
  scope :recent, order('created_at DESC')
  scope :alphabetical, order('title ASC')
  scope :popular, order('votes_count DESC')
  
 # def votes_count
#    if self.votes.count > 0
#      self.votes.count
#    else
#      0
#    end
   # read_attribute(:votes_count).presence || 0
#  end
  
#  def before_votes
#    if self.votes.count.nil?
#      self.votes.count == 0
#    end
#  end
    
    
end
