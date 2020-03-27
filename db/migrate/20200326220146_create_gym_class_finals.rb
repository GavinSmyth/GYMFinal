class CreateGymClassFinals < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_class_finals do |t|
      t.integer :personal_trainer_id
      t.string :Type
      t.string :PTName
      t.date :Date
      t.time :Time

      t.timestamps
    end
  end
end
