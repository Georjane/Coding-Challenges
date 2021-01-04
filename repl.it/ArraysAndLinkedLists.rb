class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  attr_accessor :head, :tail, :length 
  
  def initialize()
    @head = nil
    @tail = nil
    @length = 0
  end

  def add(number)
    # your code here
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
    
    @length += 1
    self
  end

  def get(index)
    # your code here
    counter = 0 
    results = @head
    while results
      break if counter == index
      results = results.next_node
      counter += 1
    end
    results.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)
# => 5