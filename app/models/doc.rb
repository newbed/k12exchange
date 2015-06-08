class Doc < ActiveRecord::Base
  validates :title, presence: true
  validates :user, presence: true

  validates :kind, inclusion: { in: %w(Presentation Assessment Homework Class Activities),
    message: "%{value} is not a valid kind" }

    mount_uploader :url, UrlUploader

    belongs_to :user
    has_many :ratings

# needs url, description
end
