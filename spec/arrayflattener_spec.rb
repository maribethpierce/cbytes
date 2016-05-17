require 'spec_helper'
require_relative '../arrayflattener'
require 'pry'

list = [["arrows", "carrots"], ["give", "me", ["dominoes", "dominion"]], "dominic", [8], 42]

RSpec.describe "ArrayFlattener" do

  it "should return a flat array when given a multi dimensional array" do
    test_array = ArrayFlattener.new(list)
    expect(test_array.smash).to eq(test_array.flatten)
  end

end
