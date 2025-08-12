class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.references :grade, null: false, foreign_key: true
      t.string :full_name
      t.integer :absent_days

      t.timestamps
    end
  end
end
