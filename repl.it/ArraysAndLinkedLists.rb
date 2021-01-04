class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  attr_accessor :head, :tail
  
  def initialize()
	  @head = nil
    @tail = nil
  end

  def add(number)
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next_node = node
      @tail = @tail.next_node
    end
  end

  def get(index)
    # your code here
    counter = 0
    results = @head
    while counter != index
      results = results.next_node
      counter += 1
    end
    results.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add(7)
puts list.get(1)
# => 5