class Post < ActiveRecord::Base
  attr_accessible :content, :link, :title
  validates :link, :title, presence: true
  belongs_to :user
end
