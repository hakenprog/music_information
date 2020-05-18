require 'test_helper'

class AlbumTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_type = album_types(:one)
  end

  test "should get index" do
    get album_types_url
    assert_response :success
  end

  test "should get new" do
    get new_album_type_url
    assert_response :success
  end

  test "should create album_type" do
    assert_difference('AlbumType.count') do
      post album_types_url, params: { album_type: { nombre: @album_type.nombre } }
    end

    assert_redirected_to album_type_url(AlbumType.last)
  end

  test "should show album_type" do
    get album_type_url(@album_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_type_url(@album_type)
    assert_response :success
  end

  test "should update album_type" do
    patch album_type_url(@album_type), params: { album_type: { nombre: @album_type.nombre } }
    assert_redirected_to album_type_url(@album_type)
  end

  test "should destroy album_type" do
    assert_difference('AlbumType.count', -1) do
      delete album_type_url(@album_type)
    end

    assert_redirected_to album_types_url
  end
end
