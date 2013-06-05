class Tag < ActiveRecord::Base
  attr_accessible :post_id, :user_id
  
  belongs_to :post
  belongs_to :tagged_user, class_name: 'User', foreign_key: 'user_id'
end
