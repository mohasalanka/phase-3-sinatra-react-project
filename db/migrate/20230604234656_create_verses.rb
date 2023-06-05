class CreateVerses < ActiveRecord::Migration[6.1]
  def change
    create_table :verses do |t|
      t.text :content
      t.integer :surah_id

      t.timestamps
    end
  end
end
