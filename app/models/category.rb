class Category < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :title, :parent_id
  acts_as_nested_set
  default_scope order('title ASC')
  
  has_many :bookmarks 
  friendly_id :title, use: :slugged
end
