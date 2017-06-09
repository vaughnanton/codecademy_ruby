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
    puts "Enter a new movie title, using underscore (_) for spaces..."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Enter a rating for this movie (1-5)..."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "Error, that movie already exists!"
    end
when "update"
    puts "Enter a movie title, using underscore (_) for spaces..."
    title = gets.chomp
    if movies[title].nil?
        puts "Error, movie does not exist in library!"
    else
        puts "Enter a new rating (1-5)..."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been updated with new rating of #{rating}."
    end
when "display"
    movies.each do |movie,rating|
      puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Enter a movie title, using underscore (_) for spaces..."
    title = gets.chomp
    if movies[title].nil?
        puts "Error, movie does not exist in library!"
    else
      movies.delete(title)
      puts "Movie successfully deleted!"
    end
else
    puts "Please try again."
end
