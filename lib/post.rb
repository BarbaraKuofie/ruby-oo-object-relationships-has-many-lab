##since the author has many posts, we need to reate a post class
## we initialize the post with posts and save it all in a class variable 

class Post
    ## access the author class through the accessor 
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title= title 
       @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def author_name 
        if !author
         return nil 
        end 
    author.name 
    end 
end 