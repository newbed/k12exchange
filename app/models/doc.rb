class Doc < ActiveRecord::Base
  validates :title, presence: true
  validates :user, presence: true

  validates :kind, inclusion: { in: %w(Presentation Assessment Homework Class Activities), message: "%{value} is not valid" }

  mount_uploader :url, UrlUploader

  belongs_to :user
  has_many :ratings, dependent: :destroy

  def update_avg_rating
    self.avg_rating = ratings.average(:stars).to_f.round(1)
    save
  end

end
