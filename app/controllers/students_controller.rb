class StudentsController < ApplicationController
  def index
    @student_table_data = Student.get_all_students_full_table
  end
end
