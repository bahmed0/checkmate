class MenuItem < ApplicationRecord
  # Direct associations

  has_many   :line_items,
             :foreign_key => "menuitem_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
