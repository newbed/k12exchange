class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :url
      t.string :title
      t.float :avg_rating
      t.text :description

      t.timestamps

    end
  end
end
