class Machine < ApplicationRecord
  validates :category, :model, presence: true
  belongs_to :user
end
