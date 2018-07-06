class Counter < Concurrent::Actor::Context
  # Include context of an actor which gives this class access to reference
  # and other information about the actor

  # use initialize as you wish
  def initialize(initial_value)
    @count = initial_value
  end

  # override on_message to define actor's behaviour
  def on_message(message)
    if Integer === message
      @count += message
    end
  end
end #

# Create new actor naming the instance 'first'.
# Return value is a reference to the actor, the actual actor is never returned.
counter = Counter.spawn(:first, 5)

# Tell a message and forget returning self.
counter.tell(1)
counter << 1
# (First counter now contains 7.)

# Send a messages asking for a result.
counter.ask(0).class
counter.ask(0).value
class Adder < Concurrent::Actor::RestartingContext
  def initialize(init)
    @count = init
  end

  def on_message(message)
    case message
    when :add
      @count += 1
    else
      # pass to ErrorsOnUnknownMessage behaviour, which will just fail
      pass
    end
  end
end 

# `link: true` makes the actor linked to root actor and supervised
# which is default behavior
adder = Adder.spawn(name: :adder, link: true, args: [1])
    # => #<Concurrent::Actor::Reference:0x7fbedd8e3d40 /adder (Adder)>
adder.parent
    # => #<Concurrent::Actor::Reference:0x7fbedbaa1e90 / (Concurrent::Actor::Root)>

# tell and forget
adder.tell(:add).tell(:add)
    # => #<Concurrent::Actor::Reference:0x7fbedd8e3d40 /adder (Adder)>
# ask to get result
adder.ask!(:add)                                   # => 4
# fail the actor
adder.ask!(:bad) rescue $!
    # => #<Concurrent::Actor::UnknownMessage: :bad from #<Thread:0x007fbedb8809b8>>
# actor is restarted with initial values
adder.ask!(:add)                                   # => 2
adder.ask!(:terminate!)                            # => true
