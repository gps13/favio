require 'test_helper'

class FaviniosControllerTest < ActionController::TestCase
  setup do
    @favinio = favinios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favinios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favinio" do
    assert_difference('Favinio.count') do
      post :create, favinio: { description: @favinio.description, title: @favinio.title }
    end

    assert_redirected_to favinio_path(assigns(:favinio))
  end

  test "should show favinio" do
    get :show, id: @favinio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favinio
    assert_response :success
  end

  test "should update favinio" do
    put :update, id: @favinio, favinio: { description: @favinio.description, title: @favinio.title }
    assert_redirected_to favinio_path(assigns(:favinio))
  end

  test "should destroy favinio" do
    assert_difference('Favinio.count', -1) do
      delete :destroy, id: @favinio
    end

    assert_redirected_to favinios_path
  end
end
