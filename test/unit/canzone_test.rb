require 'test_helper'

class CanzoneTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Canzone.new.valid?
  end
end
