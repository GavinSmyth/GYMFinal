class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
    
      t.date :week
      t.integer :weightKG
      t.integer :weightStone
      t.integer :weightPounds
      t.integer :BodyFat

      t.timestamps
    end
  end
end
