module ArtistsHelper

  def display_artist
    if self.artist.blank?
      render 'songs/edit'
    else
      render 'songs/show'
  end
end
