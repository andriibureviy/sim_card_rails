require "application_system_test_case"

class TelegramsTest < ApplicationSystemTestCase
  setup do
    @telegram = telegrams(:one)
  end

  test "visiting the index" do
    visit telegrams_url
    assert_selector "h1", text: "Telegrams"
  end

  test "should create telegram" do
    visit telegrams_url
    click_on "New telegram"

    fill_in "Name", with: @telegram.name
    fill_in "Phone", with: @telegram.phone
    fill_in "Surname", with: @telegram.surname
    fill_in "User", with: @telegram.user_id
    fill_in "Username", with: @telegram.username
    click_on "Create Telegram"

    assert_text "Telegram was successfully created"
    click_on "Back"
  end

  test "should update Telegram" do
    visit telegram_url(@telegram)
    click_on "Edit this telegram", match: :first

    fill_in "Name", with: @telegram.name
    fill_in "Phone", with: @telegram.phone
    fill_in "Surname", with: @telegram.surname
    fill_in "User", with: @telegram.user_id
    fill_in "Username", with: @telegram.username
    click_on "Update Telegram"

    assert_text "Telegram was successfully updated"
    click_on "Back"
  end

  test "should destroy Telegram" do
    visit telegram_url(@telegram)
    click_on "Destroy this telegram", match: :first

    assert_text "Telegram was successfully destroyed"
  end
end
