class Instagram < ActiveRecord::Base
  validates :title,:image_url,:content,presence: true
  belongs_to :user
  mount_uploader :image_url, ImagesUploader
end
