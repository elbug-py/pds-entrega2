require "application_system_test_case"

class AltQuestionsTest < ApplicationSystemTestCase
  setup do
    @alt_question = alt_questions(:one)
  end

  test "visiting the index" do
    visit alt_questions_url
    assert_selector "h1", text: "Alt questions"
  end

  test "should create alt question" do
    visit alt_questions_url
    click_on "New alt question"

    fill_in "Alternativa1", with: @alt_question.alternativa1
    fill_in "Alternativa2", with: @alt_question.alternativa2
    fill_in "Alternativa3", with: @alt_question.alternativa3
    fill_in "Alternativa4", with: @alt_question.alternativa4
    fill_in "Dificultad", with: @alt_question.dificultad
    fill_in "Enunciado", with: @alt_question.enunciado
    fill_in "Id tema", with: @alt_question.id_tema
    fill_in "Respuesta", with: @alt_question.respuesta
    click_on "Create Alt question"

    assert_text "Alt question was successfully created"
    click_on "Back"
  end

  test "should update Alt question" do
    visit alt_question_url(@alt_question)
    click_on "Edit this alt question", match: :first

    fill_in "Alternativa1", with: @alt_question.alternativa1
    fill_in "Alternativa2", with: @alt_question.alternativa2
    fill_in "Alternativa3", with: @alt_question.alternativa3
    fill_in "Alternativa4", with: @alt_question.alternativa4
    fill_in "Dificultad", with: @alt_question.dificultad
    fill_in "Enunciado", with: @alt_question.enunciado
    fill_in "Id tema", with: @alt_question.id_tema
    fill_in "Respuesta", with: @alt_question.respuesta
    click_on "Update Alt question"

    assert_text "Alt question was successfully updated"
    click_on "Back"
  end

  test "should destroy Alt question" do
    visit alt_question_url(@alt_question)
    click_on "Destroy this alt question", match: :first

    assert_text "Alt question was successfully destroyed"
  end
end
