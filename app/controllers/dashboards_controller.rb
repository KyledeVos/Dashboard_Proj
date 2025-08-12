class DashboardsController < ApplicationController
  def index
    @students_total_count = get_students_total
  end

  # KPI - Totals
  def get_students_total
    student_count_return = Student.get_students_count
    if student_count_return == "Error"
      return "Error"
    else 
      return student_count_return
    end
  end

end
