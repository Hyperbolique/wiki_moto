require 'test_helper'

class MotoTest < ActiveSupport::TestCase

  def setup
    @moto = Moto.new(nom: "Exemple de moto")
  end

  test "should be valid" do
    assert @moto.valid?
  end
end