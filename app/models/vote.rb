class Vote < ActiveRecord::Base
  attr_accessible :user_id, :post_id
  validate :only_one_user_per_post
  
  belongs_to :user
  belongs_to :post, :counter_cache => true
  
private
  def only_one_user_per_post
    if Vote.where("user_id = ? AND post_id = ?", self.user_id, self.post_id).all.any?
      errors.add(:user_id, "Can only post once per post!")
    end
  end
end
