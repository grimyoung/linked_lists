require_relative 'node'
require_relative 'linkedlist'

test = LinkedList.new(5)
test.append(6)
test.append(7)
test.append(8)
test.to_s
p test.find(10)
test.to_s
