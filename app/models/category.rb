class Category < ActiveRecord::Base
  attr_accessible :title
  acts_as_nested_set
end
