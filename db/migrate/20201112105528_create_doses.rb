class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :name
      t.references :ingredient, index: true, foreign_key: true
      t.references :cocktail, index: true, foreign_key: true

      t.timestamps
    end
  end
end
