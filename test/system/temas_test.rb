require "application_system_test_case"

class TemasTest < ApplicationSystemTestCase
  setup do
    @tema = temas(:one)
  end

  test "visiting the index" do
    visit temas_url
    assert_selector "h1", text: "Temas"
  end

  test "should create tema" do
    visit temas_url
    click_on "New tema"

    fill_in "Materia actual", with: @tema.materia_actual
    click_on "Create Tema"

    assert_text "Tema was successfully created"
    click_on "Back"
  end

  test "should update Tema" do
    visit tema_url(@tema)
    click_on "Edit this tema", match: :first

    fill_in "Materia actual", with: @tema.materia_actual
    click_on "Update Tema"

    assert_text "Tema was successfully updated"
    click_on "Back"
  end

  test "should destroy Tema" do
    visit tema_url(@tema)
    click_on "Destroy this tema", match: :first

    assert_text "Tema was successfully destroyed"
  end
end
