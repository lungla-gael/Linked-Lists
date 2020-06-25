require './LinkedList.rb'
require './Node.rb'

list = LinkedList.new
a = Node.new
a.value = "Gael"
b = Node.new
b.value = "Falon"
c = Node.new
c.value = "Noura"

list.append(a)
list.append(b)
list.prepend(c)

puts list.to_s
puts list.head
puts list.tail
list.pop
puts list.to_s
puts list.contains?(b)
puts list.size