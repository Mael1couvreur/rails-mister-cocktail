class AddColumnDescriptionToDoses < ActiveRecord::Migration[6.0]
  def change
    add_column :doses, :description, :text
  end
end
