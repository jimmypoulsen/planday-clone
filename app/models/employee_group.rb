class EmployeeGroup < ApplicationRecord
  belongs_to :organization
  has_many :employees
end
