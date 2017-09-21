class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.datetime :time_from
      t.datetime :time_to
      t.references :organization, foreign_key: true
      t.references :place, foreign_key: true
      t.references :employee, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
