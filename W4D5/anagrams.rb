require 'benchmark'
require "byebug"

puts
puts "-" * 30 + "Phase I" + "-" * 30
puts

def anagram?(str1, str2) #n! 
    str1_arr = str1.split("")
    str2_arr = str2.split("") 
    combos = str1_arr.permutation(str1.length).to_a

    return combos.include?(str2_arr)
end

p anagram?("gizmo", "sally")
p anagram?("elvis", "lives")


def anagram2?(str1, str2)
    str1_arr = str1.split("")
    str2_arr = str2.split("") 

    str2_arr.each do |el|
        if str1_arr.include?(el)
            str1_arr.delete(el)
        else
            return false
        end
    end
    if str1_arr.empty?
        true
    else
        false
    end    
end

puts
puts "-" * 30 + "Phase II" + "-" * 30
puts

p anagram2?("gizmo", "sally")
p anagram2?("elvis", "lives")

puts
puts "-" * 30 + "Phase III" + "-" * 30
puts