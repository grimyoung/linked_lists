class LinkedList
  def initialize(value)
    @head = Node.new(value,nil)
  end

  def append(value)
    if @head == nil
      prepend(value)
    end
    else 
      temp = @head
      while temp.next_node != nil
        temp = temp.next_node
      end
      @temp.next_node = Node.new(value,nil)
    end
  end

  def prepend(value)
    @head = Node.new(value,@head)
  end

  def size
    count = 0
    if @head != nil
      temp = @head
      count += 1
      while temp.next_node != nil
        count += 1
        temp.next_node
      end
    end
    return count
  end


end