require 'test_helper'

class MyDictionariesControllerTest < ActionController::TestCase
  setup do
    @my_dictionary = my_dictionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_dictionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_dictionary" do
    assert_difference('MyDictionary.count') do
      post :create, my_dictionary: { eng: @my_dictionary.eng, rus: @my_dictionary.rus }
    end

    assert_redirected_to my_dictionary_path(assigns(:my_dictionary))
  end

  test "should show my_dictionary" do
    get :show, id: @my_dictionary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_dictionary
    assert_response :success
  end

  test "should update my_dictionary" do
    patch :update, id: @my_dictionary, my_dictionary: { eng: @my_dictionary.eng, rus: @my_dictionary.rus }
    assert_redirected_to my_dictionary_path(assigns(:my_dictionary))
  end

  test "should destroy my_dictionary" do
    assert_difference('MyDictionary.count', -1) do
      delete :destroy, id: @my_dictionary
    end

    assert_redirected_to my_dictionaries_path
  end
end
