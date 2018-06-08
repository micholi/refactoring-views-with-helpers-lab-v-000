class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist ? self.artist.name :nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: artist.name)
    # self.artist.update(artist)
  end

    def category_name=(name)
  self.category = Category.find_or_create_by(name: name)
end

def category_name
   self.category ? self.category.name : nil
end
  
end
