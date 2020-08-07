class Comment

    attr_accessor :string, :photo

    @@all = []

    def initialize(string)
        @string = string
        @@all << self
    end

    def self.all
        @@all
    end

end