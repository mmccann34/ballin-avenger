class Post < ActiveRecord::Base
  attr_accessible :content, :link, :title, :tag_tokens
  validates :title, presence: true
  belongs_to :user
  has_many :tags
  has_many :tagged_users, through: :tags
  
  attr_reader :tag_tokens
  
  def tag_tokens=(ids)
    self.tagged_user_ids = ids.split(",")
  end
end
