class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @data = Node.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        if @data.nil? 
            puts "nil"
        else
            value = @data.value
            @data = @data.next_node
            value
        end
    end

end
def reverse_list(list)
  previous = nil
  # set current_head to node2
  curr = list
  nex = nil
    
  while (curr!=nil)
    next_node = curr.next_node
    curr.next_node = previous
    previous = curr
    curr = next_node
     
  end
  previous
end
# Creates a new Stack object
stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)

# Pops (removes) the TOP number from the stack (2)

puts stack.pop

#=> 2

# Pops the remaining number from the stack (1)
puts stack.pop
#=> 1

# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop
