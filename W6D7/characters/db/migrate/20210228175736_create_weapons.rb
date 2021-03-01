class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :type, null:false
      t.integer :ammo, null:false
      t.integer :charater_id
      t.timestamps
    end
  end
end
