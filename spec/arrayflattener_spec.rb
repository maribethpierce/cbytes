require 'spec_helper'
require_relative '../arrayflattener'
require 'pry'

list = [1,2.7,3,[12,23,34],[234,345,[3456,3456],123,234],12,23,[1,2]]
array = [1,2,3,4,5,345,7.5]

RSpec.describe "Barray" do
  it "should return a flat array when given a multi dimensional array" do
    this = Barray.new(list)
    expect(this.flat).to eq(list.flatten)
    expect(this.length).to eq(list.flatten.length)
    expect(this.flat.each { |x| x.class } ).to_not eq(Array)
  end

  it "should return a flat array when given a flat array" do
    that = Barray.new(array)
    expect(that.flat).to eq(array.flatten)
    expect(that.length).to eq(array.length)
    expect(that.flat.each { |x| x.class } ).to_not eq(Array)
  end
end
