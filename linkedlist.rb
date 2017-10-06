class LinkedList
  def initialize(value)
    @head = Node.new(value,nil)
  end

  def append(value)
    if @head == nil
      prepend(value)
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
      count = 1
      while temp.next_node != nil
        count += 1
        temp = temp.next_node
      end
    end
    return count
  end


  def head
    return @head
  end

  def tail
    temp = @head
    while temp.next_node != nil
      temp = temp.next_node
    end
  end

  def at(index)
    temp = @head
    index.times do 
      if temp.next_node == nil
        return nil
      else
        temp = temp.next_node
      end
    end
    return temp
  end

  def to_s
    temp = @head
    while temp.next_node != nil
      print "(#{temp.value}) -> "
      temp = temp.next_node
    end
  end
end