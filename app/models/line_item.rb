class LineItem < ApplicationRecord
  # Direct associations

  belongs_to :menuitem,
             :class_name => "MenuItem",
             :counter_cache => true

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end
