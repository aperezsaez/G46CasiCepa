class Person < ApplicationRecord
  has_and_belongs_to_many :guesses
  accepts_nested_attributes_for :guesses, reject_if: :all_blank, allow_destroy: true
end
