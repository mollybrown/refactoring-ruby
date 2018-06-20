class Decorator
  def initialize(subject)
    @subject = subject
  end

  def method_missing(sym, *args, &block)
    @subject.send(sym, *args, &block)
  end
end

#############################

class Decorator
  def initialize(subject)
    # public_methods returns the list of public methods accessible to obj. If the all parameter is set to false, only those methods in the receiver will be listed.
    subject.public_methods(false).each do |method|
      # ClassName.class_eval defines an instance method (one that applies to all of the instances of ClassName)
      (class << self; self; end).class_eval do
        # define_method defines an instance method in the receiver. The method parameter can be a Proc, a Method or an UnboundMethod object. If a block is specified, it is used as the method body.
        define_method(method) do |*args|
          # send invokes the method identified by symbol, passing it any arguments specified.
          subject.send(method, *args)
        end
      end
    end
  end
end
