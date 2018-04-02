class Student

    attr_accessor :name, :cohert, :language

    def initialize(name, cohert)
        @name = name
        @cohert = cohert   

    end

    def talk()
        return "I Can Talk!"
    end

    def say_fav_language(language)
        return "My favourite language is #{language}"
    end
end

### PART B OF HOMEWORK

class SportsTeam

    attr_accessor :team_name, :players, :coach, :points

    def initialize(team_name, players, coach, points)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = points
    end

    def add_new_player(new_player)
        @players << new_player
    end

    def find_player_by_name(player_name)
        for player in @players
            if player_name == player
                return true
            end
        end
        return nil
    end

    def add_win(num)
            @points += (num)  
    end

    def add_lose(num_lose)
            @points += (num_lose)
    end
end

### Extension

class Library

    attr_reader :title, :student_name, :date_of_pickup

    def initialize(title, student_name, date_of_pickup)
        @title = title
        @student_name = student_name
        @date_of_pickup = date_of_pickup
    end

    def book_info(title)
        if @title == title
            return "#{title}, #{student_name}, #{date_of_pickup}"
        else
            "Error"
        end
    end
end