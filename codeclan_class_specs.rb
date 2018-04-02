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

### PART B OF HOMEWORK

class TestSportsTeam < MiniTest::Test

    def setup()
    @sports_team = SportsTeam.new(
        "Scotland", 
        ["Brown", "Fletcher", "Tierney"],
         "McLeish",
         0
         )
    end

 def test_add_new_player
        assert_equal(["Brown", "Fletcher", "Tierney","Cavens"], @sports_team.add_new_player("Cavens"))
 end

 def test_set_coach_name
    @sports_team.coach = "White"
    assert_equal("White", @sports_team.coach)
 end

 def test_find_player_by_name  
    assert_equal(true, @sports_team.find_player_by_name("Brown"))
 end

 def test_add_points_for_win
    assert_equal(3, @sports_team.add_win(3))
 end

 def test_points_for_lose
    assert_equal(-3, @sports_team.add_lose(-3))
 end
end

### Extension

class TestLibrary < MiniTest::Test

   def setup()
    @book = Library.new("Lord of the Rings", "Jeff", "01/12/16")
   end

   def test_name_of_book
       assert_equal("Lord of the Rings", @book.title)
   end

   def test_information_of_book
       assert_equal("Lord of the Rings, Jeff, 01/12/16", @book.book_info("Lord of the Rings"))
   end
end