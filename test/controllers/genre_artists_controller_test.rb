require 'test_helper'

class GenreArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genre_artist = genre_artists(:one)
  end

  test "should get index" do
    get genre_artists_url
    assert_response :success
  end

  test "should get new" do
    get new_genre_artist_url
    assert_response :success
  end

  test "should create genre_artist" do
    assert_difference('GenreArtist.count') do
      post genre_artists_url, params: { genre_artist: { artist_id: @genre_artist.artist_id, genre_id: @genre_artist.genre_id } }
    end

    assert_redirected_to genre_artist_url(GenreArtist.last)
  end

  test "should show genre_artist" do
    get genre_artist_url(@genre_artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_genre_artist_url(@genre_artist)
    assert_response :success
  end

  test "should update genre_artist" do
    patch genre_artist_url(@genre_artist), params: { genre_artist: { artist_id: @genre_artist.artist_id, genre_id: @genre_artist.genre_id } }
    assert_redirected_to genre_artist_url(@genre_artist)
  end

  test "should destroy genre_artist" do
    assert_difference('GenreArtist.count', -1) do
      delete genre_artist_url(@genre_artist)
    end

    assert_redirected_to genre_artists_url
  end
end
