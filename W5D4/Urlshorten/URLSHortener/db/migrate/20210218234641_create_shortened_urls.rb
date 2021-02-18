class CreateShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|

      t.timestamps
    end
    add_index
  end
end
