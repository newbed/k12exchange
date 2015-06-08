class AddForeignKeysToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :user_id, :string
    add_column :ratings, :doc_id, :string
  end
end
