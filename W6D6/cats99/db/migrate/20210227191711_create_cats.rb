class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.date :birth_date, null:false
      t.string :color, null:false
      t.string :description
      t.string :sex, null:false
      t.timestamps
    end
  end

end
