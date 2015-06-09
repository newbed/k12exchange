class Rating < ActiveRecord::Base
  validates :stars, presence: true
  validates :doc_id, presence: true

  validates :stars, inclusion: 1..5

  belongs_to :doc
  belongs_to :user

  after_save :update_doc_rating

  def update_doc_rating
    doc.update_avg_rating
  end

end
