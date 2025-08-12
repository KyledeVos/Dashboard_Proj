class Student < ApplicationRecord
  belongs_to :grade
  has_many :percentages
  has_many :subjects, through: :percentages
  has_many :involvements
  has_many :activities, through: :involvements

  def self.get_all_students_full_table
    begin
      student_data = Student.includes(:grade, :activities).map do |current_student|
        {
          grade: current_student.grade.grade_value,
          full_name: current_student.full_name,
          absent_days: current_student.absent_days,
          activities: current_student.activities.pluck(:name)
        }
      end

    rescue => error_string
      Rails.logger.error("Student Model Error during get all students table data as: #{error_string}")
      return []
    end
  end

  def self.get_students_count
    begin
      return Student.count
    rescue => error_string
      Rails.logger.error("Student Model Error during get all students count as: #{error_string}")
      return "Error"
    end
  end
end
