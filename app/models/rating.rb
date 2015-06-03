class Rating < ActiveRecord::Base
  validates :stars, presence: true
  validates :doc_id, presence: true

  belongs_to :doc

end
