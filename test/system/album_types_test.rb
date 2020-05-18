require "application_system_test_case"

class AlbumTypesTest < ApplicationSystemTestCase
  setup do
    @album_type = album_types(:one)
  end

  test "visiting the index" do
    visit album_types_url
    assert_selector "h1", text: "Album Types"
  end

  test "creating a Album type" do
    visit album_types_url
    click_on "New Album Type"

    fill_in "Nombre", with: @album_type.nombre
    click_on "Create Album type"

    assert_text "Album type was successfully created"
    click_on "Back"
  end

  test "updating a Album type" do
    visit album_types_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @album_type.nombre
    click_on "Update Album type"

    assert_text "Album type was successfully updated"
    click_on "Back"
  end

  test "destroying a Album type" do
    visit album_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album type was successfully destroyed"
  end
end
