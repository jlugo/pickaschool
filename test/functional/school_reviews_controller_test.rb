require 'test_helper'

class SchoolReviewsControllerTest < ActionController::TestCase
  setup do
    @school_review = school_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_review" do
    assert_difference('SchoolReview.count') do
      post :create, school_review: @school_review.attributes
    end

    assert_redirected_to school_review_path(assigns(:school_review))
  end

  test "should show school_review" do
    get :show, id: @school_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_review
    assert_response :success
  end

  test "should update school_review" do
    put :update, id: @school_review, school_review: @school_review.attributes
    assert_redirected_to school_review_path(assigns(:school_review))
  end

  test "should destroy school_review" do
    assert_difference('SchoolReview.count', -1) do
      delete :destroy, id: @school_review
    end

    assert_redirected_to school_reviews_path
  end
end
