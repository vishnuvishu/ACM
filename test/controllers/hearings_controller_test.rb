require 'test_helper'

class HearingsControllerTest < ActionController::TestCase
  setup do
    @hearing = hearings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hearings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hearing" do
    assert_difference('Hearing.count') do
      post :create, hearing: { advocate_id: @hearing.advocate_id, amount: @hearing.amount, case_id: @hearing.case_id, case_status: @hearing.case_status, date_of_hearing: @hearing.date_of_hearing }
    end

    assert_redirected_to hearing_path(assigns(:hearing))
  end

  test "should show hearing" do
    get :show, id: @hearing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hearing
    assert_response :success
  end

  test "should update hearing" do
    patch :update, id: @hearing, hearing: { advocate_id: @hearing.advocate_id, amount: @hearing.amount, case_id: @hearing.case_id, case_status: @hearing.case_status, date_of_hearing: @hearing.date_of_hearing }
    assert_redirected_to hearing_path(assigns(:hearing))
  end

  test "should destroy hearing" do
    assert_difference('Hearing.count', -1) do
      delete :destroy, id: @hearing
    end

    assert_redirected_to hearings_path
  end
end
