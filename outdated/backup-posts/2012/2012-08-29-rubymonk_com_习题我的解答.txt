# rubymonk.com 习题我的解答

http://rubymonk.com/books/1/problems/14-sort-string-words
Problem Statement
Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length. Let's not treat the punctuation marks any different than other characters and assume that we will always have single space to separate the words.

Example: Given a string "Sort words in a sentence", it should return "a in Sort words sentence"

def sort_string(string)
  # your code here
  string = string.split
  h = {}
  string.each {|word| h[word.length] = word}
  new_str = h.sort
  new_str.map {|a| a[1]}.join(' ')
end

网站给的答案：
def sort_string(string)
  string.split(' ').sort{|x, y| x.length <=> y.length}.join(' ')
end


## http://rubymonk.com/books/1/problems/15-select-random-elements-from-an-array

def random_select (a, n)
b = []
n.times do
b << a[rand(a.length)]
end
b
end

网站答案：
def random_select(array, n)
  result = []
  n.times do 
    result << array[rand(array.length)]
  end
  result
end

## http://rubymonk.com/books/1/problems/50-hiring_programmers_ruby_boolean_expressions

is_an_experienced_programmer = # Fill your expression here
			     
(candidate.years_of_experience >= 2 or candidate.github_points >= 500) and 
 candidate.age > 15 and 
 !candidate.applied_recently? and
candidate.languages_worked_with.include?("Ruby")

网站答案：
 (candidate.languages_worked_with.include? 'Ruby') and
   (candidate.years_of_experience >= 2 or candidate.github_points >= 500) and
     not (candidate.age < 15 or candidate.applied_recently?)
	 

