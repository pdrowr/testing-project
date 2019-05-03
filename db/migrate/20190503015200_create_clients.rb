class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :business
      t.string :email
      t.string :phone
      t.integer :economic_sector_id

      t.timestamps
    end
  end
end
