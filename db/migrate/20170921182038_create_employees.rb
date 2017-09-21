class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :password_digest
      t.references :organization, foreign_key: true
      t.references :employee_group, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
