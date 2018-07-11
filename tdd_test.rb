require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCodes < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    def test_if_hash_is_empty
        coins = {}
        assert_equal(coins, {})
    end
    def test_if_quarter_is_25()
        coins = {:quarter => "25"}
        assert_equal(coins[:quarter], "25")
    end

end

