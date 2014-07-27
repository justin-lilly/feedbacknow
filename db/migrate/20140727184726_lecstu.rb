class Lecstu < ActiveRecord::Migration
  def change
    create_table :lecstus do |t|
      t.integer :lecture_id
      t.integer :student_id

      t.timestamps
    end
  end
end



