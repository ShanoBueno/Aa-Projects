class AddSex < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :sex, :string
  end
end
