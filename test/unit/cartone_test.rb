require 'test_helper'

class CartoneTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Cartone.new.valid?
  end
end
