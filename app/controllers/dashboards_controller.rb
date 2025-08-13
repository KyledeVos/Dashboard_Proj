class DashboardsController < ApplicationController
  def index
    @students_total_count = get_students_total
    @students_overall_average = get_school_total_average
    @grade_averages = get_grade_averages
    @subject_averages_overall = get_avg_subject_percentages
    @all_subject_names = Subject.get_all_subjects_names
    @selected_subject = session[:selected_subject] || @all_subject_names[0]

    # Subject Selector Data
    subject_data = subject_section_controller
    @selected_subject_overall_percentage = subject_data[:overall]
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

  # Subject Section Controller
  def subject_section_controller
    final_data = {}
    selected_subject = session[:selected_subject]
    all_subjects_percentages = Subject.get_percentages_by_subject
    
    # get the current subject overall percentage
    selected_subject_overall_percentage = all_subjects_percentages[selected_subject]
    if !selected_subject_overall_percentage
      final_data[:overall] = "Data not available"
    else
      final_data[:overall] = "#{selected_subject_overall_percentage}%"
    end
    puts "SELECTED OVERALL, #{selected_subject_overall_percentage}"

    
    return final_data
    
  end

  # get average percentage per subject overall
  def get_avg_subject_percentages

    subject_percentages = Subject.get_percentages_by_subject

  end

  def set_selected_subject
    session[:selected_subject] = params[:subject_name]
  Rails.logger.info("SELECTED #{session[:selected_subject]}")
  redirect_to dashboards_path

  end

end
