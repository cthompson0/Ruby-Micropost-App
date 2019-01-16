require 'test_helper'

class LikedPostTest < ActiveSupport::TestCase

  def setup
    @user = User.first
    @micropost = Micropost.last
  end

  test "should like a micropost" do
    @user.like(@micropost)
    assert_equal @user.liked_posts.count, 1
  end

  test "should unlike a micropost" do
    @user.like(@micropost)
    assert_equal @user.liked_posts.count, 1
    @user.unlike(@micropost)
    assert_equal @user.liked_posts.count, 0
  end
end
