require('minitest/autorun')
require_relative("codeclan_class.rb")

class TestCodeClanCohert < MiniTest::Test

    def setup()
        @student = Student.new("Liam", 5)
    end

 def test_student_name
        assert_equal("Liam", @student.name)
 end

 def test_student_cohert
        assert_equal(5, @student.cohert)
 end

 def test_set_student_name
    @student.name = "Chris"
     assert_equal("Chris", @student.name)
 end

 def test_set_student_cohert
    @student.cohert = 5
    assert_equal(5, @student.cohert)
 end

 def test_student_can_talk
     assert_equal("I Can Talk!", @student.talk)
 end

 def test_students_fav_language
    assert_equal("My favourite language is Ruby", @student.say_fav_language("Ruby"))
 end
end