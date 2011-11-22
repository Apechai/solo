class Vote < ActiveRecord::Base
  attr_accessible :user_id, :post_id
  
  belongs_to :user
  belongs_to :post, :counter_cache => true
end
