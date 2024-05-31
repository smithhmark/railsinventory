require "application_system_test_case"

class ItemOwnersTest < ApplicationSystemTestCase
  setup do
    @item_owner = item_owners(:one)
  end

  test "visiting the index" do
    visit item_owners_url
    assert_selector "h1", text: "Item owners"
  end

  test "should create item owner" do
    visit item_owners_url
    click_on "New item owner"

    fill_in "Email", with: @item_owner.email
    fill_in "Owner name", with: @item_owner.owner_name
    click_on "Create Item owner"

    assert_text "Item owner was successfully created"
    click_on "Back"
  end

  test "should update Item owner" do
    visit item_owner_url(@item_owner)
    click_on "Edit this item owner", match: :first

    fill_in "Email", with: @item_owner.email
    fill_in "Owner name", with: @item_owner.owner_name
    click_on "Update Item owner"

    assert_text "Item owner was successfully updated"
    click_on "Back"
  end

  test "should destroy Item owner" do
    visit item_owner_url(@item_owner)
    click_on "Destroy this item owner", match: :first

    assert_text "Item owner was successfully destroyed"
  end
end
