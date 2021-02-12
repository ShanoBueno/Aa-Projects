require 'benchmark'


def my_min(arr)  # time complexity = n ^2
  min = arr[0]
  arr.each do |ele_1|
    arr.each do |ele_2|
      if ele_1 < ele_2 
        if ele_1 < min
          min = ele_1
        end
      else
        if ele_2 < min
          min = ele_2
        end
      end
    end
  end
  return min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

puts Benchmark.measure{my_min(list)}  # =>  -5
# puts my_min(list)
# include Benchmark         # we need the CAPTION and FORMAT constants
# n = 5000000
# Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
#   tf = x.report(":my_min")   { for i in 1..n; a = "1"; end }
#   # tt = x.report("times:") { n.times do   ; a = "1"; end }
#   # tu = x.report("upto:")  { 1.upto(n) do ; a = "1"; end }
#   # [tf+tt+tu, (tf+tt+tu)/3]
# end
          
      




