class Photo

    attr_accessor :user, :comment

    @@all = []

    def initialize()
        #@user = user
        @@all << self
    end



    def comments
        Comment.all.select {|comment| comment.photo == self}
    end

    def make_comment(string)
        comment = Comment.new(string)
        comment.photo = self
    end

    def self.all
        @@all
    end

end