class Request < ApplicationRecord
  belongs_to :organization
  belongs_to :shift
end
