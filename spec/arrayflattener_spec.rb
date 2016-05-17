require 'spec_helper'
require_relative '../arrayflattener'
require 'pry'

list = [["arrows", "carrots"], ["give", "me", ["dominoes", "dominion"]], "dominic", [8], 42]
array = [1,2,3,4,5,"squash",7.5]

RSpec.describe "ArraySmasher" do

  it "should return a flat array when given a multi dimensional array" do
    test_array = ArraySmasher.new(list)
    expect(test_array.smash).to eq(list.flatten)
  end

  it "should return a flat array when given a flat array" do
    new_test_array = ArraySmasher.new(array)
    expect(new_test_array.smash).to eq(array.flatten)
  end

end
