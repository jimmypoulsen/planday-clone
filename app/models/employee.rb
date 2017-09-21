class Employee < ApplicationRecord
  has_secure_password

  belongs_to :organization
  belongs_to :employee_group
  has_many :shifts

  before_save { self.email = email.downcase }
  validates :firstname, presence: true, length: { maximum: 25 }
  validates :lastname, presence: true, length: { maximum: 35 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  def name
    "#{firstname} #{lastname}"
  end
end
