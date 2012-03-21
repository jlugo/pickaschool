require 'test_helper'

class TeacherReviewsControllerTest < ActionController::TestCase
  setup do
    @teacher_review = teacher_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_review" do
    assert_difference('TeacherReview.count') do
      post :create, teacher_review: @teacher_review.attributes
    end

    assert_redirected_to teacher_review_path(assigns(:teacher_review))
  end

  test "should show teacher_review" do
    get :show, id: @teacher_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_review
    assert_response :success
  end

  test "should update teacher_review" do
    put :update, id: @teacher_review, teacher_review: @teacher_review.attributes
    assert_redirected_to teacher_review_path(assigns(:teacher_review))
  end

  test "should destroy teacher_review" do
    assert_difference('TeacherReview.count', -1) do
      delete :destroy, id: @teacher_review
    end

    assert_redirected_to teacher_reviews_path
  end
end
