class Room < ActiveRecord::Base
  belongs_to :user
  has_many :item
  mount_uploader :t_photo, TPhotoUploader
  mount_uploader :htgr_img, TPhotoUploader
  mount_uploader :htgk_img, TPhotoUploader
  mount_uploader :garbage, TPhotoUploader
  mount_uploader :aircon, TPhotoUploader
  # has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  # validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
