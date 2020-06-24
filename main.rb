require './LinkedList.rb'
require './Node.rb'

list = LinkedList.new
a = Node.new
a.value = "Gael"
list.append(a)
a.next_node = list.find(a) + 1

b = Node.new
b.value = "Kate"
list.append(b)
b.next_node = list.find(b) + 1

c = Node.new
c.value = "Noura"
list.prepend(c)
c.next_node = list.find(c) + 1

puts list.to_s
puts list.size
puts list.head
puts list.tail
puts list.at(0)
puts list.pop
puts list.contains?(a)
puts list.find(b)
list.insert_at("Aisha",2)
puts list.to_s
list.remove_at(2)
puts list.to_s