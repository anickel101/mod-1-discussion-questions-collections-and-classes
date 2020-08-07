require_relative "./photo.rb"

class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def photos
        Photo.all.select {|photo| photo.user == self}
    end


end