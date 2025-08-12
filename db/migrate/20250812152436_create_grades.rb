class CreateGrades < ActiveRecord::Migration[8.0]
  def change
    create_table :grades do |t|
      t.integer :grade_value

      t.timestamps
    end
  end
end
