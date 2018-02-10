class Picture < ApplicationRecord
  mount_uploader :imgae, ImageUploader
end
