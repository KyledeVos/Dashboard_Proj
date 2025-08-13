require "test_helper"

class SubjectTest < ActiveSupport::TestCase

  test 'check overall average percentage per subject' do
    puts "START TEST: Subject Model -get_percentages_by_subject"
    puts "Before test, Overall Percentage: #{Subject.get_percentages_by_subject}"

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

    subject_eng = Subject.create(subject_name: "English", mandatory_pass: true)
    subject_afr = Subject.create(subject_name: "Afrikaans", mandatory_pass: true)
    subject_math = Subject.create(subject_name: "Mathematics", mandatory_pass: true)

    Percentage.create!(student: first_student, subject: subject_eng, percentage_value: 35)
    Percentage.create!(student: second_student, subject: subject_math, percentage_value: 40)
    Percentage.create!(student: third_student, subject: subject_afr, percentage_value: 90)
    Percentage.create!(student: fourth_student, subject: subject_afr, percentage_value: 60)
    Percentage.create!(student: fifth_student, subject: subject_eng, percentage_value: 0)
    Percentage.create!(student: sixth_student, subject: subject_math, percentage_value: 100)

    subject_percentages = Subject.get_percentages_by_subject
        
    assert_equal 3 ,subject_percentages.length
    assert_equal 17.5, subject_percentages["English"]
    assert_equal 75.0, subject_percentages["Afrikaans"]
    assert_equal 70.0, subject_percentages["Mathematics"]
    puts "END TEST: Subject Model -get_percentages_by_subject"
  end
end
