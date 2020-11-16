require 'test_helper'

class FullTitleTest < ActionDispatch::IntegrationTest
  test "full title helper" do
    assert_equal full_title, "Ruby Micropost App"
    assert_equal full_title("Help"), "Help | Ruby Micropost App"
  end
end
