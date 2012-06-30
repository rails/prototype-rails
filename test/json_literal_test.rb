require 'abstract_unit'

class JsonLiteralTest < ActiveSupport::TestCase
  def test_as_json
    assert_equal PrototypeRails::JSON::Literal.new("foo").as_json, "foo"
    assert_equal PrototypeRails::JSON::Literal.new('alert("foo")').as_json, 'alert("foo")'
  end 
end
