class LifeMeasure < ApplicationRecord
  # Direct associations

  belongs_to :category

  belongs_to :user

  # Indirect associations

  # Validations

end
