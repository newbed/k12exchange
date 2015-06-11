class Rating < ActiveRecord::Base
  validates :stars, presence: true
  validates :stars, inclusion: 1..5

  validates :doc_id, presence: true, uniqueness: true
  validates :user_id, presence: true, uniqueness: true

  belongs_to :doc
  belongs_to :user

  after_save    :update_doc_rating
  after_destroy :update_doc_rating

  def update_doc_rating
    doc.update_avg_rating
  end

end
