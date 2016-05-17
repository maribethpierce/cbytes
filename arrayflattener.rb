require 'pry'
this = [[1,2,[3]],4]

@result = []
def smash(arr)
  arr.each do |a|
    # binding.pry
    if a.class != Array
      @result << a
    else
      smash(a)
    end
  end
  @result
end

print smash(this)
