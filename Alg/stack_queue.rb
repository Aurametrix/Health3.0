/**********************************************************************
arrays can be stacks or queues
push / pop gives LIFO behavior (stack)  - 
push / shift gives FIFO behavior (queue) - removes the 1st element

map is the Hash class
Set class, although you have to import a module to use it (require 'set').
**********************************************************************/

class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    @store.push(element)
    self
  end
  
  def size
    @store.size
  end
end

class Queue
  def initialize
    @store = Array.new
  end
  
  def dequeue
    @store.pop
  end
  
  def enqueue(element)
    @store.unshift(element)
    self
  end
  
  def size
    @store.size
  end
end
