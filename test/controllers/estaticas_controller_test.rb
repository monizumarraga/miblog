require 'test_helper'

class EstaticasControllerTest < ActionDispatch::IntegrationTest
  test "should get contacto" do
    get estaticas_contacto_url
    assert_response :success
  end

  test "should get nosotros" do
    get estaticas_nosotros_url
    assert_response :success
  end

end
