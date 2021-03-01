class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, null:false
      t.string :breed, null:false
      t.date :birth_date, null:false
      t.string :color

    end
    
  end
end
