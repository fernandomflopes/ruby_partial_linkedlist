class Node

    def initialize value, index = 0
        self.value = value
        if index == nil
            self.index = 0
        else
            self.index = index
        end
    end

    def add value
        if self.next == nil
            self.next = Node.new value, self.index + 1
        else
            self.next.add value
        end
    end

    def print
        puts self.value
        if self.next == nil
            return
        end

        self.next.print
    end

    def [](index)
        if self.index == index
            return self.value
        else
            return self.next[index]
        end
    end

    private
        attr_accessor :value
        attr_accessor :next
        attr_accessor :index

end

head = Node.new 1
head.add 2
head.add 3
head.add 4
head.add 5

puts head[4]