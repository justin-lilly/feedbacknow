class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end
  end
end
