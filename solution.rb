# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_reader :name
   def initialize(name)
    @name=name
   end

  #  `Author#articles`
     def articles
     Article.all.select{|article|article.author.self}
     end
     def magazines
      articles.map(magazine).uniq
     end
end

class Magazine  
    attr_accessor :name ,:category
    @@all =[]
    def initialize(name, category)
        @name=name
        @category=category
        @@all << self

    end
    def self.all
        @@all
      end
      def self.readmagazine
        self.all.each do |magazine|
          puts magazine.name
        end

end

class Article 
     attr_reader :title
     @@all =[]
    def initialize(author,magazine,title)
     @author = author 
     @magazine=magazine
     @title=title
     @@all << self
    end
    def self.all
        @@all
      end
    end