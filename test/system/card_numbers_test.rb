require "application_system_test_case"

class CardNumbersTest < ApplicationSystemTestCase
  setup do
    @card_number = card_numbers(:one)
  end

  test "visiting the index" do
    visit card_numbers_url
    assert_selector "h1", text: "Card numbers"
  end

  test "should create card number" do
    visit card_numbers_url
    click_on "New card number"

    fill_in "Created at", with: @card_number.created_at
    fill_in "Number", with: @card_number.number
    fill_in "User", with: @card_number.user_id
    click_on "Create Card number"

    assert_text "Card number was successfully created"
    click_on "Back"
  end

  test "should update Card number" do
    visit card_number_url(@card_number)
    click_on "Edit this card number", match: :first

    fill_in "Created at", with: @card_number.created_at
    fill_in "Number", with: @card_number.number
    fill_in "User", with: @card_number.user_id
    click_on "Update Card number"

    assert_text "Card number was successfully updated"
    click_on "Back"
  end

  test "should destroy Card number" do
    visit card_number_url(@card_number)
    click_on "Destroy this card number", match: :first

    assert_text "Card number was successfully destroyed"
  end
end
