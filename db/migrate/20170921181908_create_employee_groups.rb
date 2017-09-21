class CreateEmployeeGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_groups do |t|
      t.string :name
      t.integer :min_age
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
