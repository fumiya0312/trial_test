class Entry < ApplicationRecord
    belongs_to :blog
    has_many :comments
    mount_uploader :image, ImageUploader
end
