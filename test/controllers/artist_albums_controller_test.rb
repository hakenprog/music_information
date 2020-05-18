require 'test_helper'

class ArtistAlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_album = artist_albums(:one)
  end

  test "should get index" do
    get artist_albums_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_album_url
    assert_response :success
  end

  test "should create artist_album" do
    assert_difference('ArtistAlbum.count') do
      post artist_albums_url, params: { artist_album: { album_id: @artist_album.album_id, artist_id: @artist_album.artist_id } }
    end

    assert_redirected_to artist_album_url(ArtistAlbum.last)
  end

  test "should show artist_album" do
    get artist_album_url(@artist_album)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_album_url(@artist_album)
    assert_response :success
  end

  test "should update artist_album" do
    patch artist_album_url(@artist_album), params: { artist_album: { album_id: @artist_album.album_id, artist_id: @artist_album.artist_id } }
    assert_redirected_to artist_album_url(@artist_album)
  end

  test "should destroy artist_album" do
    assert_difference('ArtistAlbum.count', -1) do
      delete artist_album_url(@artist_album)
    end

    assert_redirected_to artist_albums_url
  end
end
