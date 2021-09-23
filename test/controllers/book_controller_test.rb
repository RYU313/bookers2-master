require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get book_title:string_url
    assert_response :success
  end

  test "should get body:text" do
    get book_body:text_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get book_user_id:integer_url
    assert_response :success
  end

end
