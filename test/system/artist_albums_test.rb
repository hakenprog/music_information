require "application_system_test_case"

class ArtistAlbumsTest < ApplicationSystemTestCase
  setup do
    @artist_album = artist_albums(:one)
  end

  test "visiting the index" do
    visit artist_albums_url
    assert_selector "h1", text: "Artist Albums"
  end

  test "creating a Artist album" do
    visit artist_albums_url
    click_on "New Artist Album"

    fill_in "Album", with: @artist_album.album_id
    fill_in "Artist", with: @artist_album.artist_id
    click_on "Create Artist album"

    assert_text "Artist album was successfully created"
    click_on "Back"
  end

  test "updating a Artist album" do
    visit artist_albums_url
    click_on "Edit", match: :first

    fill_in "Album", with: @artist_album.album_id
    fill_in "Artist", with: @artist_album.artist_id
    click_on "Update Artist album"

    assert_text "Artist album was successfully updated"
    click_on "Back"
  end

  test "destroying a Artist album" do
    visit artist_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artist album was successfully destroyed"
  end
end
