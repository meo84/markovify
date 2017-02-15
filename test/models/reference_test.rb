require 'test_helper'

class ReferenceTest < ActiveSupport::TestCase
  def setup
    @reference = Reference.new(content: "Don't tell me the moon is shining; show me the glint of light on broken glass.")
  end

  test "should be valid" do
    assert @reference.valid?
  end

  test "content should be present" do
    @reference.content = "    "
    assert_not @reference.valid?
  end

  test "content validation should accept contents with at least 4 words" do
    valid_contents = ["good night and good luck", "don't mind the apostrophe"]
    valid_contents.each do |valid_content|
      @reference.content = valid_content
      assert @reference.valid?, "#{valid_content.inspect} should be valid"
    end
  end

  test "content validation should reject contents with less than 4 words" do
    invalid_contents = ["oh hey", "it's me"]
    invalid_contents.each do |invalid_content|
      @reference.content = invalid_content
      assert_not @reference.valid?, "#{invalid_content.inspect} should be invalid"
    end
  end
end
