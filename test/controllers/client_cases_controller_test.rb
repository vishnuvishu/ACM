require 'test_helper'

class ClientCasesControllerTest < ActionController::TestCase
  setup do
    @client_case = client_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_case" do
    assert_difference('ClientCase.count') do
      post :create, client_case: { advocate_id: @client_case.advocate_id, case_number: @client_case.case_number, case_status: @client_case.case_status, case_type_id: @client_case.case_type_id, case_year: @client_case.case_year, client_id: @client_case.client_id, court_complex_id: @client_case.court_complex_id, court_hall_id: @client_case.court_hall_id, district_id: @client_case.district_id, file_no: @client_case.file_no, name: @client_case.name, state_id: @client_case.state_id }
    end

    assert_redirected_to client_case_path(assigns(:client_case))
  end

  test "should show client_case" do
    get :show, id: @client_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_case
    assert_response :success
  end

  test "should update client_case" do
    patch :update, id: @client_case, client_case: { advocate_id: @client_case.advocate_id, case_number: @client_case.case_number, case_status: @client_case.case_status, case_type_id: @client_case.case_type_id, case_year: @client_case.case_year, client_id: @client_case.client_id, court_complex_id: @client_case.court_complex_id, court_hall_id: @client_case.court_hall_id, district_id: @client_case.district_id, file_no: @client_case.file_no, name: @client_case.name, state_id: @client_case.state_id }
    assert_redirected_to client_case_path(assigns(:client_case))
  end

  test "should destroy client_case" do
    assert_difference('ClientCase.count', -1) do
      delete :destroy, id: @client_case
    end

    assert_redirected_to client_cases_path
  end
end
