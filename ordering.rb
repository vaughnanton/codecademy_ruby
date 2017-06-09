=begin
  Use of methods to write a program that can handle
  sorting in reverse alphabetical order.
=end

def alphabetize(arr, rev=false)

  if rev
    arr.reverse! { |item1, item2| item2 <=> item1 }
  else
    arr.sort! { |item1, item2| item1 <=> item2 }
  end
end

numbers = [4,3,8,7,9,13]

puts alphabetize(numbers)
