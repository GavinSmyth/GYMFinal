class CreatePersonalTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_trainers do |t|
      t.string :firstName
      t.string :secondName
      t.string :desription
      t.integer :amountOfClients

      t.timestamps
    end
  end

  
end
