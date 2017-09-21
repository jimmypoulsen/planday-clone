class AddOwnerToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :owner, foreign_key: true
  end
end
