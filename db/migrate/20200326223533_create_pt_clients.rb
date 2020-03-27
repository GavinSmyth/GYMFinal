class CreatePtClients < ActiveRecord::Migration[6.0]
  def change
    create_table :pt_clients do |t|
      t.integer :personal_trainer_id
      t.string :Name
      t.string :PTName

      t.timestamps
    end
  end
end
