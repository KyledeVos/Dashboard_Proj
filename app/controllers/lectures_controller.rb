class LecturesController < ApplicationController
  def index
     @lecture_table_data = Lecture.get_all_lectures_full_table
  end
end
