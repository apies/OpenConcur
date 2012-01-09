require 'test_helper'

class ChargesControllerTest < ActionController::TestCase
  setup do
    @charge = charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charge" do
    assert_difference('Charge.count') do
      post :create, charge: @charge.attributes
    end

    assert_redirected_to charge_path(assigns(:charge))
  end

  test "should show charge" do
    get :show, id: @charge.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charge.to_param
    assert_response :success
  end

  test "should update charge" do
    put :update, id: @charge.to_param, charge: @charge.attributes
    assert_redirected_to charge_path(assigns(:charge))
  end

  test "should destroy charge" do
    assert_difference('Charge.count', -1) do
      delete :destroy, id: @charge.to_param
    end

    assert_redirected_to charges_path
  end
end
