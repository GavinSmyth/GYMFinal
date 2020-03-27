class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :address
      t.string :ptName
      t.string :bio
      add_index :user_profiles, :user_id, unique: true

      t.timestamps
    end
  end
end
