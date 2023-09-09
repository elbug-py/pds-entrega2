require "test_helper"

class DevQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_question = dev_questions(:one)
  end

  test "should get index" do
    get dev_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_question_url
    assert_response :success
  end

  test "should create dev_question" do
    assert_difference("DevQuestion.count") do
      post dev_questions_url, params: { dev_question: { dificultad: @dev_question.dificultad, enunciado: @dev_question.enunciado, id_tema: @dev_question.id_tema, respuesta: @dev_question.respuesta } }
    end

    assert_redirected_to dev_question_url(DevQuestion.last)
  end

  test "should show dev_question" do
    get dev_question_url(@dev_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_question_url(@dev_question)
    assert_response :success
  end

  test "should update dev_question" do
    patch dev_question_url(@dev_question), params: { dev_question: { dificultad: @dev_question.dificultad, enunciado: @dev_question.enunciado, id_tema: @dev_question.id_tema, respuesta: @dev_question.respuesta } }
    assert_redirected_to dev_question_url(@dev_question)
  end

  test "should destroy dev_question" do
    assert_difference("DevQuestion.count", -1) do
      delete dev_question_url(@dev_question)
    end

    assert_redirected_to dev_questions_url
  end
end
