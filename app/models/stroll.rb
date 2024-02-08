class Stroll < ApplicationRecord
  belongs_to :dog, optional: false
  belongs_to :dogsitter, optional: false
  belongs_to :city, optional: false
  
end
