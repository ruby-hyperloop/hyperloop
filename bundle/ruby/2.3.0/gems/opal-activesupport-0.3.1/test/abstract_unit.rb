# ORIG_ARGV = ARGV.dup
#
# begin
#   old, $VERBOSE = $VERBOSE, nil
#   require File.expand_path('../../../load_paths', __FILE__)
# ensure
#   $VERBOSE = old
# end
#
# require 'active_support/core_ext/kernel/reporting'
# require 'active_support/core_ext/string/encoding'
#
# silence_warnings do
#   Encoding.default_internal = "UTF-8"
#   Encoding.default_external = "UTF-8"
# end
#
# require 'active_support/testing/autorun'
# require 'empty_bool'
#
# ENV['NO_RELOAD'] = '1'
# require 'active_support'
#
# Thread.abort_on_exception = true
#
# # Show backtraces for deprecated behavior for quicker cleanup.
# ActiveSupport::Deprecation.debug = true

require 'minitest/autorun'
require 'empty_bool'
require 'active_support'

class ActiveSupport::TestCase < Minitest::Test
  def self.test name, &block
    define_method "test_#{name.gsub(/[\W-]+/, '_')}", &block
  end

  def assert_raise error, &block
    block.call
    assert false, "Expected to see #{error.inspect}, but no exception was raised"
  rescue error
    # noop
  rescue => actual_error
    assert false, "Expected to see #{error.inspect}, but got #{actual_error.inspect}"
  end
end
