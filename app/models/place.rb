class Place < ApplicationRecord
  belongs_to :organization
  belongs_to :employee_group
end
