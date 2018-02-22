class CategoryItem < ApplicationRecord
  belongs_to :locations polymorphic: true

  has_many :categories 

end
