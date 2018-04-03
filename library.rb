class Library

    attr_reader :books

    def initialize(books)
        @books = books
    end

# Using attr_reader to get
    # def books()
    #     return @books
    # end

    def book_info(title)
        for book in @books do
            if book[:title] == title
                return book
            end
        end
        return nil
    end

    # def rental_details(title)
    #     for book in @books do
    #         if book[:title] == title
    #             return book[:rental_details]
    #         end
    #     end
    # end

    ### ### ### ### ### OR YOU COULD DO ### ### ### ### ###

    def rental_details(title)
        info = book_info(title)
        if info != nil
        return info[:rental_details]
        end
    end

    def add_book(title)
        new_book = {
            title: title,
            rental_details: {
                student_name: "",
                date: ""
            }
        }
        @books.push(new_book)
    end
end