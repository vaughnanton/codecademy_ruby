=begin
Use of hashes and symbols to construct
a program that displays, add, updates,
and removes movie ratings.
=end

movies = {
  Gladiator: 4,
  Shawshank_Redemption: 5,
  The_Dictator: 4,
  Training_Day: 3,
  Dumb_and_Dumber: 3,
  Casino: 4,
  The_Godfather: 5 }

  puts "What would you like to do?"
  puts "-- Type 'add' to add a movie."
  puts "-- Type 'update' to update a movie."
  puts "-- Type 'display' to display all movies."
  puts "-- Type 'delete' to delete a movie."

choice = gets.chomp
case choice
when "add"
    puts "Enter new movie title, using underscore (_) for spaces..."
    title = gets.chomp
    rating=gets.chomp.to_i
    if movies[title.to_sym].nil?
        puts puts "Enter rating for this movie (1-5)..."
    else
        movies[title]=rating
    end
when "update"
    puts "Enter movie title, using underscore (_) for spaces..."
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "Error, movie does not exist in library."
    else
        puts "Enter new rating (1-5)..."
        rating = gets.chomp.to_i
        movies[title]=rating
    end
when "display"
    movies.each do |k,v|
    puts "#{k}: #{v}"
    end
when "delete"
    puts "Enter movie title, using underscore (_) for spaces..."
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "Error movie does not exist in library."
else
    movies.delete(title)
    puts "Movie successfully deleted!"
end
    puts "Error!"
end
