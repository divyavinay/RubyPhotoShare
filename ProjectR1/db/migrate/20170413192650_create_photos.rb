class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :file_name
      t.date :date_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
