require 'pry'

class Barray
  attr_reader :flat

  def initialize(array)
    @array = array
  end

  def flat
    @array.to_s.gsub(/[\[\]]/, "").split(",").map { |s| s.to_f }
  end

  def length
    self.flat.length
  end
end
