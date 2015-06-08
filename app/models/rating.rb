class Rating < ActiveRecord::Base
  validates :stars, presence: true
  validates :doc_id, presence: true

  validates :stars, inclusion: 1..5

  belongs_to :doc
  belongs_to :user

end
