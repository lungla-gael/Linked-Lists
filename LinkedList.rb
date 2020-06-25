class LinkedList
    attr_accessor :name, :list
    def initialize
        @list = Array.new
    end

    def append(value)
        list.push(value)
        list.each_with_index { |node,index| node.next_node = list.at(index + 1)}
    end

    def prepend(value)
        list.unshift(value)
        list.each_with_index { |node,index| node.next_node = list.at(index + 1)}
    end

    def size
        list.size
    end

    def head
        list.first
    end

    def tail
        list.last
    end

    def at(index)
        list[index]
    end

    def pop
        list.pop
        list.each_with_index { |node,index| node.next_node = list.at(index + 1)}
    end

    def contains?(value)
        list.include?(value)
    end

    def find(value)
        list.index(value)
    end

    def to_s
        list.map { |value| " ( #{value} ) -> "}
    end

    def insert_at(value, index)
        list.insert(index, value)
        list.each_with_index { |node,index| node.next_node = list.at(index + 1)}
    end

    def remove_at(index)
        list.delete_at(index)
        list.each_with_index { |node,index| node.next_node = list.at(index + 1)}
    end
end