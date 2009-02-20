require 'test_helper'

class DevotionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devotion" do
    assert_difference('Devotion.count') do
      post :create, :devotion => { }
    end

    assert_redirected_to devotion_path(assigns(:devotion))
  end

  test "should show devotion" do
    get :show, :id => devotions(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => devotions(:one).id
    assert_response :success
  end

  test "should update devotion" do
    put :update, :id => devotions(:one).id, :devotion => { }
    assert_redirected_to devotion_path(assigns(:devotion))
  end

  test "should destroy devotion" do
    assert_difference('Devotion.count', -1) do
      delete :destroy, :id => devotions(:one).id
    end

    assert_redirected_to devotions_path
  end
end
