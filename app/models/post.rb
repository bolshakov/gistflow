class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  has_and_belongs_to_many :lovers, :class_name => "User",
    :join_table => :favorite_posts_lovers
  
  default_scope :order => 'created_at DESC'
  
  before_save { raise 'booo' }
end
