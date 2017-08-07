class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :line_items,
             :dependent => :destroy

  has_many   :tabs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
