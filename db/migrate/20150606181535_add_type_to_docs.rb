class AddTypeToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :type, :string
  end
end
