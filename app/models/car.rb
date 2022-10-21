class Car < ApplicationRecord
  has_many :variants, inverse_of: :car
  accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true
end
