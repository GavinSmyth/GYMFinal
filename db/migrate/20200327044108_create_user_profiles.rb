class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :address
      t.string :ptName
      t.string :bio

      t.timestamps
    end
  
  end
end
