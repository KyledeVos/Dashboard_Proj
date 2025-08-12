require "test_helper"

class StudentTest < ActiveSupport::TestCase
  

  # Test that student count works correctly
  test 'check get_students_count returns correct counts' do
    puts "Before test, Student.count: #{Student.count}"
    
    grade = Grade.create!(grade_value: 8);
    Student.create!(grade: grade, full_name: "Nancy Jinkings", absent_days: 2)
    Student.create!(grade: grade, full_name: "Peter Donald", absent_days: 5)
    Student.create!(grade: grade, full_name: "Pedter Donal", absent_days: 5)

    student_count = Student.get_students_count 
    puts "COUNT, #{student_count}"
    assert_equal 3, student_count
  end
end
