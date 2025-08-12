class CreateSubjects < ActiveRecord::Migration[8.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.boolean :mandatory_pass

      t.timestamps
    end
  end
end
