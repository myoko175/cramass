class MachineUser < ApplicationRecord
  belongs_to :machine
  belongs_to :user

  mount_uploader :image, ImageUploader
end
