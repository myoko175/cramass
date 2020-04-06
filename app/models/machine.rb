class Machine < ApplicationRecord
  validates :category, :model, presence: true
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.search(search)
    return Machine.all unless search
    Machine.where(['category LIKE(?) OR address LIKE(?)', "%#{search}%","%#{search}%"])
  end
end