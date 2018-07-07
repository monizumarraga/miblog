require 'test_helper'

class StaticasControllerTest < ActionDispatch::IntegrationTest
  test "should get contacto" do
    get staticas_contacto_url
    assert_response :success
  end

  test "should get nosotros" do
    get staticas_nosotros_url
    assert_response :success
  end

end
