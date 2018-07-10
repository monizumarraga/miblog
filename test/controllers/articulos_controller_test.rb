require 'test_helper'

class ArticulosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get articulos_new_url
    assert_response :success
  end

  test "should get index" do
    get articulos_index_url
    assert_response :success
  end

end
