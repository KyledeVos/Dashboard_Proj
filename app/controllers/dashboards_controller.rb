class DashboardsController < ApplicationController
  def index
    @students_total_count = get_students_total
    @students_overall_average = get_school_total_average
    @grade_averages = get_grade_averages
    @subject_averages_overall = get_avg_subject_percentages
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


  # Averages

  # Get the overall average of the whole school
  def get_school_total_average
    student_overall_average = Percentage.get_school_average_percentage
    if student_overall_average == "Error"
      return "Error"
    else
      return student_overall_average
    end
  end

  # Get the average for each grade
  def get_grade_averages
    grades_overall_average = Grade.get_students_by_grade
    if grades_overall_average.empty?
      return "Empty"
    else
      return grades_overall_average
    end
  end

  # get average percentage per subject overall
  def get_avg_subject_percentages

    subject_percentages = Subject.get_percentages_by_subject

  end

end
