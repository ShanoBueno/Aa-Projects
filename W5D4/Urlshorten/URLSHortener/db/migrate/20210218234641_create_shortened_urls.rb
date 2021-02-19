class CreateShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null:false
      t.string :short_url, null:false



      t.timestamps
    end
    add_index :long_url, :short_url, :user_id 
  end
end
