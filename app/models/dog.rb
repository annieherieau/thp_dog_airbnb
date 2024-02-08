class Dog < ApplicationRecord
  belongs_to :city, through: :strolls
end
