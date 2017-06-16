require 'test_helper'

class CourtComplexesControllerTest < ActionController::TestCase
  setup do
    @court_complex = court_complexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:court_complexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create court_complex" do
    assert_difference('CourtComplex.count') do
      post :create, court_complex: { district_id: @court_complex.district_id, name: @court_complex.name, state_id: @court_complex.state_id }
    end

    assert_redirected_to court_complex_path(assigns(:court_complex))
  end

  test "should show court_complex" do
    get :show, id: @court_complex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @court_complex
    assert_response :success
  end

  test "should update court_complex" do
    patch :update, id: @court_complex, court_complex: { district_id: @court_complex.district_id, name: @court_complex.name, state_id: @court_complex.state_id }
    assert_redirected_to court_complex_path(assigns(:court_complex))
  end

  test "should destroy court_complex" do
    assert_difference('CourtComplex.count', -1) do
      delete :destroy, id: @court_complex
    end

    assert_redirected_to court_complexes_path
  end
end
