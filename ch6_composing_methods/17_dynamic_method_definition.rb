# You have methods that can be defined more consicely if defined dynamically. =>
# Define the methods dynamically

def success
  self.state = :success
end

def failure
  self.state = :failure
end

def error
  self.state = :error
end

#########################

class Class

  def def_each(*method_names, &block)
    method_names.each do |method_name|
      define_method(method_name) do
        # instance_exec allows us to change self
        instance_exec(method_name, &block)
      end
    end
  end

  def_each :success, :failure, :error do |method|
    self.state = method_name
  end

end
