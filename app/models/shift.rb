class Shift < ApplicationRecord
  belongs_to :organization
  belongs_to :place
  belongs_to :employee
end
