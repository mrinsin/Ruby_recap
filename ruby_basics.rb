#Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

def is_valid(num)
  (1..10).include?(num.to_i) ? "Valid" : "Invalid"
end


#PASSWORD CHECKER CHALLENGE

# Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
# Tests:
#
# same("joe", "joe") -> true
# same("joe", "joe1") -> false

def same?(user_id, password)
  user_id.to_s == password.to_s ? true : false
end

#Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise.
# Tests:
#
# long_enough("12345") -> false
# long_enough("123456") -> true

def long_enough(str)
  str.length >= 6 ? true : false
end

# Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String.
# Tests:
#
# does_not_contain_special("Hello Friend") -> true
# does_not_contain_special("A#C") -> false
# does_not_contain_special("A!C") -> false
# does_not_contain_special("A$C") -> false

def does_not_contain_special(string)
  if string.include?("!") || string.include?("#") || string.include?("$")
    false
  else
    true
  end
end

#Challenge Write a method called contains_special which checks to see if !, #, $ is contained in a given String.
# Tests:
#
# contains_special("Hello Friend") -> false
# contains_special("A#C") -> true
# contains_special("A!C") -> true
# contains_special("A$C") -> true

def contains_special(string)
  if string.include?("!") || string.include?("#") || string.include?("$")
    true
  else
    false
  end
end

# Challenge Write a method that inputs user ID and password from the user, and then tells the user if the they are acceptable.
# Write a main method called validate_password that:
#
# First lets a user input both user ID and password,
# Then use the methods above to evaluate if the user ID and password combination is acceptable or not
# Tells user what the result is

def user_registration

  puts "Enter a user ID."
  user_id = gets.chomp

  puts "Enter a password"
  password = gets.chomp

  if !same?(user_id, password) && long_enough(user_id) && long_enough(password) && contains_special(password) && does_not_contain_special(user_id) && password != "password"
    "Your user information is valid!"
  else
    "Invalid credentials! try again"
  end

end
