class Category < ActiveRecord::Base
  attr_accessible :title

  belongs_to :category
  has_many   :categories
end
