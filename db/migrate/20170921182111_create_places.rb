class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.references :organization, foreign_key: true
      t.references :employee_group, foreign_key: true

      t.timestamps
    end
  end
end
