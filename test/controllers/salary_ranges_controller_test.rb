require 'test_helper'

class SalaryRangesControllerTest < ActionController::TestCase
  setup do
    @salary_range = salary_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salary_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary_range" do
    assert_difference('SalaryRange.count') do
      post :create, salary_range: { job_id: @salary_range.job_id, max_salary: @salary_range.max_salary, min_salary: @salary_range.min_salary }
    end

    assert_redirected_to salary_range_path(assigns(:salary_range))
  end

  test "should show salary_range" do
    get :show, id: @salary_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary_range
    assert_response :success
  end

  test "should update salary_range" do
    patch :update, id: @salary_range, salary_range: { job_id: @salary_range.job_id, max_salary: @salary_range.max_salary, min_salary: @salary_range.min_salary }
    assert_redirected_to salary_range_path(assigns(:salary_range))
  end

  test "should destroy salary_range" do
    assert_difference('SalaryRange.count', -1) do
      delete :destroy, id: @salary_range
    end

    assert_redirected_to salary_ranges_path
  end
end
