require "test_helper"

class CardNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_number = card_numbers(:one)
  end

  test "should get index" do
    get card_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_card_number_url
    assert_response :success
  end

  test "should create card_number" do
    assert_difference("CardNumber.count") do
      post card_numbers_url, params: { card_number: { created_at: @card_number.created_at, number: @card_number.number, user_id: @card_number.user_id } }
    end

    assert_redirected_to card_number_url(CardNumber.last)
  end

  test "should show card_number" do
    get card_number_url(@card_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_number_url(@card_number)
    assert_response :success
  end

  test "should update card_number" do
    patch card_number_url(@card_number), params: { card_number: { created_at: @card_number.created_at, number: @card_number.number, user_id: @card_number.user_id } }
    assert_redirected_to card_number_url(@card_number)
  end

  test "should destroy card_number" do
    assert_difference("CardNumber.count", -1) do
      delete card_number_url(@card_number)
    end

    assert_redirected_to card_numbers_url
  end
end
