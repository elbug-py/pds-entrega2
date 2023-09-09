require "test_helper"

class AltQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alt_question = alt_questions(:one)
  end

  test "should get index" do
    get alt_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_alt_question_url
    assert_response :success
  end

  test "should create alt_question" do
    assert_difference("AltQuestion.count") do
      post alt_questions_url, params: { alt_question: { alternativa1: @alt_question.alternativa1, alternativa2: @alt_question.alternativa2, alternativa3: @alt_question.alternativa3, alternativa4: @alt_question.alternativa4, dificultad: @alt_question.dificultad, enunciado: @alt_question.enunciado, id_tema: @alt_question.id_tema, respuesta: @alt_question.respuesta } }
    end

    assert_redirected_to alt_question_url(AltQuestion.last)
  end

  test "should show alt_question" do
    get alt_question_url(@alt_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_alt_question_url(@alt_question)
    assert_response :success
  end

  test "should update alt_question" do
    patch alt_question_url(@alt_question), params: { alt_question: { alternativa1: @alt_question.alternativa1, alternativa2: @alt_question.alternativa2, alternativa3: @alt_question.alternativa3, alternativa4: @alt_question.alternativa4, dificultad: @alt_question.dificultad, enunciado: @alt_question.enunciado, id_tema: @alt_question.id_tema, respuesta: @alt_question.respuesta } }
    assert_redirected_to alt_question_url(@alt_question)
  end

  test "should destroy alt_question" do
    assert_difference("AltQuestion.count", -1) do
      delete alt_question_url(@alt_question)
    end

    assert_redirected_to alt_questions_url
  end
end
