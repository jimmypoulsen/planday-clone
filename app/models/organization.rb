class Organization < ApplicationRecord
  has_one :owner, class_name: 'Employee'
  has_many :employee_groups
  has_many :shifts
end
