require "application_system_test_case"

class DevQuestionsTest < ApplicationSystemTestCase
  setup do
    @dev_question = dev_questions(:one)
  end

  test "visiting the index" do
    visit dev_questions_url
    assert_selector "h1", text: "Dev questions"
  end

  test "should create dev question" do
    visit dev_questions_url
    click_on "New dev question"

    fill_in "Dificultad", with: @dev_question.dificultad
    fill_in "Enunciado", with: @dev_question.enunciado
    fill_in "Id tema", with: @dev_question.id_tema
    fill_in "Respuesta", with: @dev_question.respuesta
    click_on "Create Dev question"

    assert_text "Dev question was successfully created"
    click_on "Back"
  end

  test "should update Dev question" do
    visit dev_question_url(@dev_question)
    click_on "Edit this dev question", match: :first

    fill_in "Dificultad", with: @dev_question.dificultad
    fill_in "Enunciado", with: @dev_question.enunciado
    fill_in "Id tema", with: @dev_question.id_tema
    fill_in "Respuesta", with: @dev_question.respuesta
    click_on "Update Dev question"

    assert_text "Dev question was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev question" do
    visit dev_question_url(@dev_question)
    click_on "Destroy this dev question", match: :first

    assert_text "Dev question was successfully destroyed"
  end
end
