require 'test_helper'

class DistribuicaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribuicao = distribuicaos(:one)
  end

  test "should get index" do
    get distribuicaos_url
    assert_response :success
  end

  test "should get new" do
    get new_distribuicao_url
    assert_response :success
  end

  test "should create distribuicao" do
    assert_difference('Distribuicao.count') do
      post distribuicaos_url, params: { distribuicao: { obs: @distribuicao.obs } }
    end

    assert_redirected_to distribuicao_url(Distribuicao.last)
  end

  test "should show distribuicao" do
    get distribuicao_url(@distribuicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribuicao_url(@distribuicao)
    assert_response :success
  end

  test "should update distribuicao" do
    patch distribuicao_url(@distribuicao), params: { distribuicao: { obs: @distribuicao.obs } }
    assert_redirected_to distribuicao_url(@distribuicao)
  end

  test "should destroy distribuicao" do
    assert_difference('Distribuicao.count', -1) do
      delete distribuicao_url(@distribuicao)
    end

    assert_redirected_to distribuicaos_url
  end
end
