require_relative 'minitest_helper'

class TestSafeEnv < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SafeEnv::VERSION
  end

  def test_it_gets_env_vars
    ENV['APPLE'] = 'apple'
    assert_equal('apple', SAFE_ENV['APPLE'])
  end

  def test_it_raises_error_when_an_env_var_is_not_set
    exception = assert_raises(RuntimeError) { SAFE_ENV['BANANA'] }
    assert_equal(exception.message, 'Environment variable BANANA is missing')
  end
end
