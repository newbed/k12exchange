class Doc < ActiveRecord::Base

  validates :title, presence: true

  has_many :ratings

  belongs_to :user

# needs url, description
end
