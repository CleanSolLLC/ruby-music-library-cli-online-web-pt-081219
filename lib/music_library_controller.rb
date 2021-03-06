class MusicLibraryController < CLIMethods

  def initialize(path = "./db/mp3s")
  	importer = MusicImporter.new(path)
  	importer.import
  end

  def call
  	puts "Welcome to your music library!"
  	puts "To list all of your songs, enter 'list songs'."
  	puts "To list all of the artists in your library, enter 'list artists'."
  	puts "To list all of the genres in your library, enter 'list genres'."
  	puts "To list all of the songs by a particular artist, enter 'list artist'."
  	puts "To list all of the songs of a particular genre, enter 'list genre'."
  	puts "To play a song, enter 'play song'."
  	puts "To quit, type 'exit'."
  	puts "What would you like to do?"

  	input = ""
  	while input != "exit"
  	  input = gets.chomp
      case input
        when "list songs" then self.list_songs
        when "list artists" then self.list_artists
        when "list genres" then self.list_genres
        when "list artist" then self.list_songs_by_artist
        when "list genre" then self.list_songs_by_genre 
        when "play song" then self.play_song
        when "exit" then exit!
        else puts "improper selection"
          call
      end

  	end
  end
end
