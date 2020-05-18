require "application_system_test_case"

class GeneratesTest < ApplicationSystemTestCase
  setup do
    @generate = generates(:one)
  end

  test "visiting the index" do
    visit generates_url
    assert_selector "h1", text: "Generates"
  end

  test "creating a Generate" do
    visit generates_url
    click_on "New Generate"

    fill_in "Album", with: @generate.album_id
    fill_in "Descripcion", with: @generate.descripcion
    fill_in "Duracion sec", with: @generate.duracion_sec
    fill_in "Nombre", with: @generate.nombre
    fill_in "Song", with: @generate.song
    click_on "Create Generate"

    assert_text "Generate was successfully created"
    click_on "Back"
  end

  test "updating a Generate" do
    visit generates_url
    click_on "Edit", match: :first

    fill_in "Album", with: @generate.album_id
    fill_in "Descripcion", with: @generate.descripcion
    fill_in "Duracion sec", with: @generate.duracion_sec
    fill_in "Nombre", with: @generate.nombre
    fill_in "Song", with: @generate.song
    click_on "Update Generate"

    assert_text "Generate was successfully updated"
    click_on "Back"
  end

  test "destroying a Generate" do
    visit generates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generate was successfully destroyed"
  end
end
