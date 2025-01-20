#Task 1 (User Input and Variables:)

puts "What is your name?"
@name = gets.chomp
puts
puts "How old are you?"
@age = gets.chomp.to_i
puts
puts "What is your favorite color?"
@favorite_color = gets.chomp
puts

puts "Hello #{@name}. aged #{@age}, who likes the color #{@favorite_color}!"
puts
# ##############################################################################################################

#Task 2 (Conditional Logic:)

if @age >= 18
  puts "You are eligible to vote!"
else
  puts "Your are not eligible to vote yet!"
end
puts
##########################################################################################

#Task 3 (Looping and Arrays:)

array = [ ]
puts "Enter your 5 favorite foods:#{array.length}"
loop do
  break if array.length >= 5
    input = gets.chomp
    array << input
end
puts "Your favorite foods are:"
puts array
puts

###############################################################################################

#Task 4 (Hashes and Symbols)

puts "Here is your profile:"
p Hash["Name:", @name]
p Hash["Age:", @age]
p Hash["Favorite Color:", @favorite_color]
p Hash["Favorite Foods:", array]
puts

#################################################################################################

#Task 5 (Iterating and Displaying Data)

puts "Here is your profile:"
profile = {"Name:"=> @name, "Age:"=> @age, "Favorite Color:"=> @favorite_color, "Favorite Foods:"=> array}
profile.each{|key, value| puts "#{key} #{value}"}
puts

##################################################################################################

#Task 6 (Bonus: Dynamic Hash Addition)

puts "Would you like to add more information to your profile?"
permission = gets.chomp
if permission == "yes"
   puts "Enter the attribute name:"
   att = gets.chomp
   puts "Enter the value for hobby:"
   hobby = gets.chomp
   puts
   additional = Hash[att => hobby]
  #  profile = profile << additional
   profile = profile.merge(additional)
else
   puts "permission denied"
end
puts

puts profile
