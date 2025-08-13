require "test_helper"

class PercentageTest < ActiveSupport::TestCase
  
  test 'check school total percentage value' do
    puts "START TEST: Percentage Model - school total percentage"
    puts "Before test, Overall Percentage: #{Percentage.get_school_average_percentage}"

    # Test data
    grade = Grade.create!(grade_value: 8);
    first_student = Student.create!(grade: grade, full_name: "Nancy Jinkings", absent_days: 2)
    second_student = Student.create!(grade: grade, full_name: "Peter Donald", absent_days: 5)
    third_student = Student.create!(grade: grade, full_name: "Nick Pancakes", absent_days: 5)
    fourth_student = Student.create!(grade: grade, full_name: "Adam Peters", absent_days: 5)
    fifth_student = Student.create!(grade: grade, full_name: "Jennifer Green", absent_days: 5)

    subject = Subject.create(subject_name: "English", mandatory_pass: true)

    Percentage.create!(student: first_student, subject: subject, percentage_value: 35)
    Percentage.create!(student: second_student, subject: subject, percentage_value: 40)
    Percentage.create!(student: third_student, subject: subject, percentage_value: 90)
    Percentage.create!(student: fourth_student, subject: subject, percentage_value: 60)
    Percentage.create!(student: fifth_student, subject: subject, percentage_value: 0)

    overall_percentage_result = Percentage.get_school_average_percentage
    puts "After test, overall percentage: #{overall_percentage_result}"
    assert_equal "45.0%", overall_percentage_result
    puts "END TEST: Percentage Controller - school total percentage"
  end
end

end
