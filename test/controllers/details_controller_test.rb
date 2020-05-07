require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get details_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_url
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post details_url, params: { detail: { date: @detail.date, image1: @detail.image1, image10: @detail.image10, image2: @detail.image2, image3: @detail.image3, image4: @detail.image4, image5: @detail.image5, image6: @detail.image6, image7: @detail.image7, image8: @detail.image8, image9: @detail.image9, plan_id: @detail.plan_id, price: @detail.price, spot: @detail.spot, text: @detail.text } }
    end

    assert_redirected_to detail_url(Detail.last)
  end

  test "should show detail" do
    get detail_url(@detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_url(@detail)
    assert_response :success
  end

  test "should update detail" do
    patch detail_url(@detail), params: { detail: { date: @detail.date, image1: @detail.image1, image10: @detail.image10, image2: @detail.image2, image3: @detail.image3, image4: @detail.image4, image5: @detail.image5, image6: @detail.image6, image7: @detail.image7, image8: @detail.image8, image9: @detail.image9, plan_id: @detail.plan_id, price: @detail.price, spot: @detail.spot, text: @detail.text } }
    assert_redirected_to detail_url(@detail)
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete detail_url(@detail)
    end

    assert_redirected_to details_url
  end
end
