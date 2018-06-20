# You need to use eval but want to limit the number of times eval is necessary. =>
# Move the use of eval from within the method definition to definiing the method itself.

class Person
  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      define_method attribute do
        # eval evaluates the Ruby expression(s) in string.
        eval "@#{attribute} ||= #{default_value}"
      end
    end
  end

  attr_with_default :emails => "[]",
                    :employee_number => "EmployeeNumberGenerator.next"

end

############################

class Person
  def self.attr_with_default(options)
    options.each_pair do |attribute, default_value|
      eval "define_method #{attribute} do
        @#{attribute} ||= #{default_value}
      end"
    end
  end

  attr_with_default :emails => "[]",
                    :employee_number => "EmployeeNumberGenerator.next"

end
