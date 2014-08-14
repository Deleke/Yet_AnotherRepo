require 'test_helper'

class AddQuizidToQuesitonsControllerTest < ActionController::TestCase
  setup do
    @add_quizid_to_quesiton = add_quizid_to_quesitons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_quizid_to_quesitons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_quizid_to_quesiton" do
    assert_difference('AddQuizidToQuesiton.count') do
      post :create, add_quizid_to_quesiton: { quizid: @add_quizid_to_quesiton.quizid }
    end

    assert_redirected_to add_quizid_to_quesiton_path(assigns(:add_quizid_to_quesiton))
  end

  test "should show add_quizid_to_quesiton" do
    get :show, id: @add_quizid_to_quesiton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_quizid_to_quesiton
    assert_response :success
  end

  test "should update add_quizid_to_quesiton" do
    patch :update, id: @add_quizid_to_quesiton, add_quizid_to_quesiton: { quizid: @add_quizid_to_quesiton.quizid }
    assert_redirected_to add_quizid_to_quesiton_path(assigns(:add_quizid_to_quesiton))
  end

  test "should destroy add_quizid_to_quesiton" do
    assert_difference('AddQuizidToQuesiton.count', -1) do
      delete :destroy, id: @add_quizid_to_quesiton
    end

    assert_redirected_to add_quizid_to_quesitons_path
  end
end
