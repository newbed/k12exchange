class RemoveTypeAddKindToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :kind, :string
    remove_column :docs, :type
  end
end
