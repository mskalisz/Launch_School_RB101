=begin
Leap Years (Part 1)
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year 
unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 
as input, and returns true if the year is a leap year, or false if it is not a leap year.

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Problem
- Leap year = every year evenly divisible by 4, unless the year is also divisible by 100
- If evenly divisible by 100, not a leap year unless evenly divisible by 400
- Return true if leap year 
- Assume year > 0

Input: integer
Output: boolean

# Algo
- Create a method which accepts 1 argument (year)
- create a var, leap year, begins as false 
- if year % 4 == 0, leap_year is true
  - if leap year % 100 == 0, leap year is false
    - if leap year % 400 == 0, leap year is true
return leap year
=end

def leap_year?(year)
  leap_year = false
  if year % 4 == 0
    leap_year = true
    if year % 100 == 0
      leap_year = false
      if year % 400 == 0
        leap_year = true
      end
    end
  end
  leap_year
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true