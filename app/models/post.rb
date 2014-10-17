class Post < ActiveRecord::Base
    scope :most_recent, -> {limit(10).order('published_at desc')}
    def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("subject like ? OR body like ?" , "%#{query}%" , "%#{query}%")
  end
end
