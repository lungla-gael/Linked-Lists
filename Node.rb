class Node
    attr_accessor :next_node, :value
    def initialize
        @next_node = nil
        @value = nil
    end

    def to_s
        "value=#{value}, next_node=#{next_node}"
    end
end