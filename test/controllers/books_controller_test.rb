require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    # get books_index_url
    # arrange

    # act
    get books_path

    # assert
    must_respond_with :success
  end

  test "should get show" do
    # get book_show_url

    get book_path

    must_respond_with :success
  end

  test "should get new" do
    # get books_new_url
    # assert_response :success
  end

  test "should get create" do
    # get books_create_url
    # assert_response :success
  end

  test "should get edit" do
    # get books_edit_url
    # assert_response :success
  end

  test "should get update" do
    # get books_update_url
    # assert_response :success
  end

  test "should get destroy" do
    # proc {
    #   delete post_path(1)
    # }.must_change 'Post.count', -1


    # get books_destroy_url
    # assert_response :success
  end

end
