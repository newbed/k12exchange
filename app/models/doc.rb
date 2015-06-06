class Doc < ActiveRecord::Base
  validates :title, presence: true
  validates :user, presence: true

  mount_uploader :url, UrlUploader

  belongs_to :user
  has_many :ratings

# needs url, description
end
