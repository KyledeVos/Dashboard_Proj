class StudentsController < ApplicationController
  def index
    Rails.logger.info("TEST, #{Student.get_all_students_full_table}")
  end
end
