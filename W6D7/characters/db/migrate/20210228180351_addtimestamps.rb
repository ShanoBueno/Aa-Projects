class Addtimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:characters)
  end
end
