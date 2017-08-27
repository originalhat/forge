class Pipeline < ApplicationRecord
  belongs_to :organization
  has_many :builds
end
