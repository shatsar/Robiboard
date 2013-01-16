class Category < ActiveRecord::Base
  attr_accessible :title, :parent_id
  acts_as_nested_set
  
  has_many :bookmarks 
end
