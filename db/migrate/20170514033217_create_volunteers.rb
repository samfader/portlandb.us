class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.text :focus, array: true, default: []
      t.text :essay

      t.timestamps
    end
  end
end
