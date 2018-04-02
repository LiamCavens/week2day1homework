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