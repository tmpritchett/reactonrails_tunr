class Song < ApplicationRecord
  belongs_to :artist
end
def update
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
  @song.update!(song_params)
  render json: {
    song: @song
  }
end

def destroy
  Song.find(params[:id]).destroy

  render json: {
    message: "Song successfully destroyed"
  }
end

private

def song_params
  params.require(:song).permit(:title, :album, :preview_url )
end


