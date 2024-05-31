require "test_helper"

class ItemOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_owner = item_owners(:one)
  end

  test "should get index" do
    get item_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_item_owner_url
    assert_response :success
  end

  test "should create item_owner" do
    assert_difference("ItemOwner.count") do
      post item_owners_url, params: { item_owner: { email: @item_owner.email, owner_name: @item_owner.owner_name } }
    end

    assert_redirected_to item_owner_url(ItemOwner.last)
  end

  test "should show item_owner" do
    get item_owner_url(@item_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_owner_url(@item_owner)
    assert_response :success
  end

  test "should update item_owner" do
    patch item_owner_url(@item_owner), params: { item_owner: { email: @item_owner.email, owner_name: @item_owner.owner_name } }
    assert_redirected_to item_owner_url(@item_owner)
  end

  test "should destroy item_owner" do
    assert_difference("ItemOwner.count", -1) do
      delete item_owner_url(@item_owner)
    end

    assert_redirected_to item_owners_url
  end
end
