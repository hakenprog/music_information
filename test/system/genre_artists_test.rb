require "application_system_test_case"

class GenreArtistsTest < ApplicationSystemTestCase
  setup do
    @genre_artist = genre_artists(:one)
  end

  test "visiting the index" do
    visit genre_artists_url
    assert_selector "h1", text: "Genre Artists"
  end

  test "creating a Genre artist" do
    visit genre_artists_url
    click_on "New Genre Artist"

    fill_in "Artist", with: @genre_artist.artist_id
    fill_in "Genre", with: @genre_artist.genre_id
    click_on "Create Genre artist"

    assert_text "Genre artist was successfully created"
    click_on "Back"
  end

  test "updating a Genre artist" do
    visit genre_artists_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @genre_artist.artist_id
    fill_in "Genre", with: @genre_artist.genre_id
    click_on "Update Genre artist"

    assert_text "Genre artist was successfully updated"
    click_on "Back"
  end

  test "destroying a Genre artist" do
    visit genre_artists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genre artist was successfully destroyed"
  end
end
