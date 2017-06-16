require 'test_helper'

class AllMobilesControllerTest < ActionController::TestCase
  setup do
    @all_mobile = all_mobiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:all_mobiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create all_mobile" do
    assert_difference('AllMobile.count') do
      post :create, all_mobile: { client_id: @all_mobile.client_id, mobile: @all_mobile.mobile }
    end

    assert_redirected_to all_mobile_path(assigns(:all_mobile))
  end

  test "should show all_mobile" do
    get :show, id: @all_mobile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @all_mobile
    assert_response :success
  end

  test "should update all_mobile" do
    patch :update, id: @all_mobile, all_mobile: { client_id: @all_mobile.client_id, mobile: @all_mobile.mobile }
    assert_redirected_to all_mobile_path(assigns(:all_mobile))
  end

  test "should destroy all_mobile" do
    assert_difference('AllMobile.count', -1) do
      delete :destroy, id: @all_mobile
    end

    assert_redirected_to all_mobiles_path
  end
end
