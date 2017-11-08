require 'test_helper'

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogpost = blogposts(:one)
  end

  test "should get index" do
    get blogposts_url, as: :json
    assert_response :success
  end

  test "should create blogpost" do
    assert_difference('Blogpost.count') do
      post blogposts_url, params: { blogpost: { body: @blogpost.body, image: @blogpost.image, title: @blogpost.title } }, as: :json
    end

    assert_response 201
  end

  test "should show blogpost" do
    get blogpost_url(@blogpost), as: :json
    assert_response :success
  end

  test "should update blogpost" do
    patch blogpost_url(@blogpost), params: { blogpost: { body: @blogpost.body, image: @blogpost.image, title: @blogpost.title } }, as: :json
    assert_response 200
  end

  test "should destroy blogpost" do
    assert_difference('Blogpost.count', -1) do
      delete blogpost_url(@blogpost), as: :json
    end

    assert_response 204
  end
end
