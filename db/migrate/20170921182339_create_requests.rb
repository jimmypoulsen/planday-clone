class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.boolean :accepted
      t.references :organization, foreign_key: true
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
