require("minitest/autorun")
require("minitest/rg")
require_relative("library.rb")

class LibraryTest < MiniTest::Test

    def setup()
        @books = [{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
    }]
    @library = Library.new(@books)
    end

    def test_get_books()
        assert_equal(@books, @library.books)
    end

    def test_get_book_info()
        info = @library.book_info("lord_of_the_rings")
        assert_equal(@books[0], info)
    end

    def test_get_rental_details()
        assert_equal(@books[0][:rental_details], @library.rental_details("lord_of_the_rings"))
    end

    def test_get_book_info__not_found()
        assert_nil(@library.book_info("Liams Book"))
    end

    def test_get_rental_details__not_found()
        assert_nil(@library.rental_details("Liams Book"))
    end

    def test_add_book_1()
        @library.add_book("Harry Potter")
        assert_equal({
            title: "Harry Potter",
            rental_details: {
                student_name: "",
                date: ""
            }
        }, @library.book_info("Harry Potter"))
    end

    def test_add_book_2()
        @library.add_book("Learn to Ruby")
        assert_equal(@books, @library.books)
    end
end