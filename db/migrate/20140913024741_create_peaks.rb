class CreatePeaks < ActiveRecord::Migration
  def change
    create_table :peaks do |t|
      t.string :name
      t.integer :altitude
      t.string :park

      t.timestamps
    end
  end
end
