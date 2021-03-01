class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name, null:false
      t.string :sex, null:false
      t.date :birth_date, null:false
      t.string :alignment, null:false
    end
    add_index :characters, :name
  end
end
