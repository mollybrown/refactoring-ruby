# You are using a atemporary variable to hold the result of an expression =>
# Change the methods to support chaining, thus removing the need for a temp.

mock  = Mock.new
expectation = mock.expects(:a_method_name)
expectation.with("arguments")
expectation.returns([1, :array])

##########################

mock = Mock.new
mock.expects(:a_method_name).with("arguments").returns([1, :array])
