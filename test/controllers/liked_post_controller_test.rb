require 'test_helper'

class LikedPostControllerTest < ActionDispatch::IntegrationTest
  test "create should require logged-in user" do
    assert_no_difference 'liked_posts.count' do
      post liked_post_index_path(1)
    end
    assert_redirected_to login_url
  end

  test "destroy should require logged-in user" do
    assert_no_difference 'liked_posts.count' do
      delete liked_post_url(liked_posts(:one))
    end
    assert_redirected_to login_url
  end
end
