class Instagram < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image_url, ImagesUploader
end
