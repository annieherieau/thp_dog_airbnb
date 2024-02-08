class Stroll < ApplicationRecord
  belongs_to :dogs, optional: false
  belongs_to :dogsitters, optional: false
end
