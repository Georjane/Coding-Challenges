# Start with your code from last challenge.
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
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next_node = node
      @tail = @tail.next_node
    end
    @length += 1
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
  
    def add_at(index, item)
    if index.zero?
      new_node = Node.new(item, @head)
      @head = new_node
    else
      node = get_node(index-1)
      new_node = Node.new(item, node.next_node)
      node.next_node = new_node

    end    
    @length += 1
  end

  def remove(index)
    if index == @length - 1
      @tail = get_node(index-1)
    elsif index == 0
      @head = get_node(index+1)
    else
      get_node(index-1).next_node = get_node(index).next_node
    end

    @length -= 1
  end


  def get_node(index)
    return @head if index == 0
    counter = 0
    results = @head
    while counter != index
      results = results.next_node
      counter += 1
    end
    results
  end
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get_node(2)
# => 11

puts list.get(3)
# => 5