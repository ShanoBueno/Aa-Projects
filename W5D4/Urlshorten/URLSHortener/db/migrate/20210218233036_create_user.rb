class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :user_id, null:false, uniquness: true
      t.string :email, null: false

    end
    add_index :user_id, :email, unique: true
  end
end
