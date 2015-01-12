require 'test_helper'

class StudentiControllerTest < ActionController::TestCase
  setup do
    @studente = studenti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studente" do
    assert_difference('Studente.count') do
      post :create, studente: { anno_di_nascita: @studente.anno_di_nascita, cognome: @studente.cognome, nome: @studente.nome }
    end

    assert_redirected_to studente_path(assigns(:studente))
  end

  test "should show studente" do
    get :show, id: @studente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studente
    assert_response :success
  end

  test "should update studente" do
    patch :update, id: @studente, studente: { anno_di_nascita: @studente.anno_di_nascita, cognome: @studente.cognome, nome: @studente.nome }
    assert_redirected_to studente_path(assigns(:studente))
  end

  test "should destroy studente" do
    assert_difference('Studente.count', -1) do
      delete :destroy, id: @studente
    end

    assert_redirected_to studenti_path
  end
end
