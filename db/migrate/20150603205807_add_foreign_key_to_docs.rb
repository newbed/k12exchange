class AddForeignKeyToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :user_id, :string
  end
end
