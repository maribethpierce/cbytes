require 'pry'
this = [[1,2,[3]],4]
that = ["joe", ["del", "bart"], ["hank", "jimm", "pete"], "perl"]
class ArraySmasher
  attr_reader :results, :array

  def initialize(array)
    @array = array
  end

  @@results = Array.new
  def smash
    self.array.each do |a|
      unless a == nil
        if a.class != Array
          @@results << a
        else
          temp_array_smasher = ArraySmasher.new(a)
          temp_array_smasher.smash
        end
      end
    end
    @@results
  end
end
that = ArraySmasher.new(that)
this = ArraySmasher.new(this)
print this.smash
print "\n"
print that.smash
