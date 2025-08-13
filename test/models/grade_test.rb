require "test_helper"

class GradeTest < ActiveSupport::TestCase

  test 'check percentage total by grade' do
    puts "START TEST: Grade Model -get_students_by_grade"
    puts "Before test, Overall Percentage: #{Grade.get_students_by_grade}"

    # Test data
    grade_eight = Grade.create!(grade_value: 8);
    grade_nine = Grade.create!(grade_value: 9);
    grade_ten = Grade.create!(grade_value: 10);

    first_student = Student.create!(grade: grade_eight, full_name: "Nancy Jinkings", absent_days: 2)
    second_student = Student.create!(grade: grade_ten, full_name: "Peter Donald", absent_days: 5)
    third_student = Student.create!(grade: grade_nine, full_name: "Nick Pancakes", absent_days: 5)
    fourth_student = Student.create!(grade: grade_ten, full_name: "Adam Peters", absent_days: 5)
    fifth_student = Student.create!(grade: grade_eight, full_name: "Jennifer Green", absent_days: 5)
    sixth_student = Student.create!(grade: grade_nine, full_name: "Lawrence Blue", absent_days: 5)

    subject = Subject.create(subject_name: "English", mandatory_pass: true)

    Percentage.create!(student: first_student, subject: subject, percentage_value: 35)
    Percentage.create!(student: second_student, subject: subject, percentage_value: 40)
    Percentage.create!(student: third_student, subject: subject, percentage_value: 90)
    Percentage.create!(student: fourth_student, subject: subject, percentage_value: 60)
    Percentage.create!(student: fifth_student, subject: subject, percentage_value: 0)
    Percentage.create!(student: sixth_student, subject: subject, percentage_value: 100)

    grades_percentages = Grade.get_students_by_grade
    puts "FINAL, #{grades_percentages}"
    
    assert_equal 3 ,grades_percentages.length
    assert_equal 17.5, grades_percentages[8]
    assert_equal 95, grades_percentages[9]
    assert_equal 50, grades_percentages[10]
    puts "END TEST: Grade Model -get_students_by_grade"
  end
end
