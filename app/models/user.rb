class User < ApplicationRecord
  # Direct associations

  has_many   :life_measures,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
