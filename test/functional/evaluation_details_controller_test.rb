require 'test_helper'

class EvaluationDetailsControllerTest < ActionController::TestCase
  setup do
    @evaluation_detail = evaluation_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_detail" do
    assert_difference('EvaluationDetail.count') do
      post :create, evaluation_detail: @evaluation_detail.attributes
    end

    assert_redirected_to evaluation_detail_path(assigns(:evaluation_detail))
  end

  test "should show evaluation_detail" do
    get :show, id: @evaluation_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_detail
    assert_response :success
  end

  test "should update evaluation_detail" do
    put :update, id: @evaluation_detail, evaluation_detail: @evaluation_detail.attributes
    assert_redirected_to evaluation_detail_path(assigns(:evaluation_detail))
  end

  test "should destroy evaluation_detail" do
    assert_difference('EvaluationDetail.count', -1) do
      delete :destroy, id: @evaluation_detail
    end

    assert_redirected_to evaluation_details_path
  end
end
