class CreateSurahs < ActiveRecord::Migration[6.1]
  def change
    create_table :surahs do |t|
      t.string :name

      t.timestamps
    end
  end
end
