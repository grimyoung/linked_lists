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
      temp.next_node = Node.new(value,nil)
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
    return temp
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

  def pop
    penult = @head
    temp = @head.next_node
    if temp == nil
      @head = nil
      return @head
    else
      while temp.next_node != nil
        penult = penult.next_node
        temp = temp.next_node
      end
    end
    penult.next_node = nil
  end

  def contains?(value)
    temp = @head
    while temp.next_node != nil
      if temp.value == value
        return true
      end
      temp = temp.next_node
    end
    return false
  end

  def find(data)
    index = 0
    temp = @head
    while temp.next_node != nil
      if temp.value == data
        return index
      end
      index += 1
      temp = temp.next_node
    end
    return nil
  end
  
  def to_s
    temp = @head
    if temp ==nil
      puts "nil"
    else
      while temp.next_node != nil
        print "(#{temp.value}) -> "
        temp = temp.next_node
      end
      puts "(#{temp.value}) -> nil"
    end
  end
end