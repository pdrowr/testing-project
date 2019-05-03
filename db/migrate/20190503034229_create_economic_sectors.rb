class CreateEconomicSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :economic_sectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
