require "minitest/autorun"
require_relative "live_code.rb"

class TestCodes < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
end
