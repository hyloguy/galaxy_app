require 'test_helper'

class StarSystemsControllerTest < ActionController::TestCase
  setup do
    @star_system = star_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:star_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create star_system" do
    assert_difference('StarSystem.count') do
      post :create, star_system: { name: @star_system.name }
    end

    assert_redirected_to star_system_path(assigns(:star_system))
  end

  test "should show star_system" do
    get :show, id: @star_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @star_system
    assert_response :success
  end

  test "should update star_system" do
    patch :update, id: @star_system, star_system: { name: @star_system.name }
    assert_redirected_to star_system_path(assigns(:star_system))
  end

  test "should destroy star_system" do
    assert_difference('StarSystem.count', -1) do
      delete :destroy, id: @star_system
    end

    assert_redirected_to star_systems_path
  end
end
