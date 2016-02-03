require 'test_helper'

class WildlivesControllerTest < ActionController::TestCase
  setup do
    @wildlife = wildlives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wildlives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wildlife" do
    assert_difference('Wildlife.count') do
      post :create, wildlife: { copies: @wildlife.copies, cost: @wildlife.cost, image: @wildlife.image, name: @wildlife.name, size: @wildlife.size }
    end

    assert_redirected_to wildlife_path(assigns(:wildlife))
  end

  test "should show wildlife" do
    get :show, id: @wildlife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wildlife
    assert_response :success
  end

  test "should update wildlife" do
    patch :update, id: @wildlife, wildlife: { copies: @wildlife.copies, cost: @wildlife.cost, image: @wildlife.image, name: @wildlife.name, size: @wildlife.size }
    assert_redirected_to wildlife_path(assigns(:wildlife))
  end

  test "should destroy wildlife" do
    assert_difference('Wildlife.count', -1) do
      delete :destroy, id: @wildlife
    end

    assert_redirected_to wildlives_path
  end
end
