class ActiveSupport::TestCase
  ##
  # Test numeric difference between the return value of an expression as a
  # result of what is evaluated in the yielded block.
  #
  #     assert_difference "Article.count" do
  #       post :create, params: { article: {...} }
  #     end
  #
  # See also Minitest::Rails::Expectations::ActiveSupport#must_change
  # See https://api.rubyonrails.org/v6.0/classes/ActiveSupport/Testing/Assertions.html#method-i-assert_difference
  #
  # :method: assert_difference
  # :call-seq: assert_difference(expression, *args, &block)

  ##
  # Assertion that the numeric result of evaluating an expression is not changed
  # before and after invoking the passed in block.
  #
  #   refute_difference "Article.count" do
  #     post :create, params: { article: invalid_attributes }
  #   end
  #
  # See also Minitest::Rails::Expectations::ActiveSupport#wont_change
  # See https://api.rubyonrails.org/v6.0/classes/ActiveSupport/Testing/Assertions.html#method-i-assert_no_difference
  #
  # :args: expression, message = nil, &block
  alias refute_difference assert_no_difference
end
