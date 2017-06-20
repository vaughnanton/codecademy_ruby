=begin
In this project we create a class,
and generate instances of that class
that can manipulate imaginary files
for us.
=end

class Computer
  @@users = {}

    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} has been created by #{@username} at #{time}!"
    end

    def Computer.get_users
        @@users
    end
end

my_computer = Computer.new("Vaughn", "P@sSw0Rd")
my_computer.create("testfile.txt")
puts "Computer: #{Computer.get_users}"
