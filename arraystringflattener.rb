require 'pry'
this = [[1,2,[3]],4]
that = [1,2.7,3,[12,23,34],[234,345,[3456,3456],123,234],12,23,[1,2]]

print that.to_s.gsub(/[\[\]]/, "").split(",").map { |s| s.to_i }
