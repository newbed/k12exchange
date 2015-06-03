class Doc < ActiveRecord::Base

  validates :title, presence: true
  validates :user_id, presence: true

  has_many :ratings

  belongs_to :user

# needs url, description
end
