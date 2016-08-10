def select_elements_starting_with_a(array)
  array.select { |e| e[0] == 'a' }
end

def select_elements_starting_with_vowel(array)
  array.select { |e| e[0] =~ /\A[aeiou]/ }
end

def remove_nils_from_array(array)
  array.compact
end

def remove_nils_and_false_from_array(array)
  array.select { |e| e != false }.compact
end

def reverse_every_element_in_array(array)
  array.map { |e| e.reverse }
end

def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

def all_elements_except_first_3(array)
  array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by! { |e| e[-1] }
end

def get_first_half_of_string(string)
  n = (string.length.to_f / 2).round
  string[0...n]
end

def make_numbers_negative(number)
  -(number.abs)
end

def separate_array_into_even_and_odd_numbers(array)
  even, odd = array.partition{|n| n % 2 == 0}
end

def number_of_elements_that_are_palindromes(array)
  array.select { |e| e == e.reverse }.length
end

def shortest_word_in_array(array)
  array.min{|a, b| a.length <=> b.length}
end

def longest_word_in_array(array)
  array.max{|a, b| a.length <=> b.length}
end

def total_of_array(array)
  array.inject(0){|sum,x| sum + x }
end

def double_array(array)
  array * 2
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  ((array.inject(0){|sum,x| sum + x }) / array.length.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  array[0..5]
end

def convert_array_to_a_hash(array)
  array.each_slice(2).to_a.to_h
end

def get_all_letters_in_array_of_words(array)
  array.join.split(//).sort
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
  hash.to_a.flatten.inject(0){|sum,x| sum + x }
end

def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, "")
end

def round_up_number(float)
  float.ceil
end

def round_down_number(float)
  float.to_i
end

def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address(email)
  email.gsub(/.+@([^.]+).+/, '\1')
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
end

def check_a_string_for_special_characters(string)
  string.chars.any? { |char| char =~ /[^A-Za-z0-9_]/ }
end

def get_upper_limit_of(range)
  range.max
end

def is_a_3_dot_range?(range)
  range.max != range.last
end


def square_root_of(number)
  number**0.5
end

# count the number of words in a file
def word_count_a_file(file_path)
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
