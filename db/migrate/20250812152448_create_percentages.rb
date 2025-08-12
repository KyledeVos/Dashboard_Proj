class CreatePercentages < ActiveRecord::Migration[8.0]
  def change
    create_table :percentages do |t|
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.float :percentage_value

      t.timestamps
    end
  end
end
