# cbytes
Welcome to Barray
![Image of Beret]
(http://i.imgur.com/eZqjODW.png)

This little class will take an array of arrays (of arrays...) of numbers and return a flat array of numbers. 
*It will not work on arrays of something other than numbers.*

**steps:**

with an array in mind like this:

`list_o_numbers = [1,2.7,3,[12,23,34],[234,345,[3456,3456],123,234],12,23,[1,2]]`

create a new instance of the Barray class:

`my_array = Barray.new(list_o_numbers)`

then call `flat` on your Barray like this:

`my_array.flat`

In return for all your hard work, you'll receive this:

`[1, 2, 3, 12, 23, 34, 234, 345, 3456, 3456, 123, 234, 12, 23, 1, 2]`


