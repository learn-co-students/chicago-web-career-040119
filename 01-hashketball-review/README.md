ITERATORS NOTES

# `find`
* inside the block: true or false
* final return value: the first item that matches as true

# `each`
* inside the block: whatever you want
* final return value: the original hash or array

# `map` or collect if you're ruby
* inside the block: whatever you want
* final return value: a new array with all of the things that you did inside the block
* return array length: same as original

# `select` or filter if you're not ruby
* inside the block: true or false (truthy or falsy)
* final return value: array with the _original_ items for which the block returned true (or truthy)
* return array length: less than or equal to the original, we lose the items for which the condition is falsy
