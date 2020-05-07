require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "creating a Detail" do
    visit details_url
    click_on "New Detail"

    fill_in "Date", with: @detail.date
    fill_in "Image1", with: @detail.image1
    fill_in "Image10", with: @detail.image10
    fill_in "Image2", with: @detail.image2
    fill_in "Image3", with: @detail.image3
    fill_in "Image4", with: @detail.image4
    fill_in "Image5", with: @detail.image5
    fill_in "Image6", with: @detail.image6
    fill_in "Image7", with: @detail.image7
    fill_in "Image8", with: @detail.image8
    fill_in "Image9", with: @detail.image9
    fill_in "Plan", with: @detail.plan_id
    fill_in "Price", with: @detail.price
    fill_in "Spot", with: @detail.spot
    fill_in "Text", with: @detail.text
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "updating a Detail" do
    visit details_url
    click_on "Edit", match: :first

    fill_in "Date", with: @detail.date
    fill_in "Image1", with: @detail.image1
    fill_in "Image10", with: @detail.image10
    fill_in "Image2", with: @detail.image2
    fill_in "Image3", with: @detail.image3
    fill_in "Image4", with: @detail.image4
    fill_in "Image5", with: @detail.image5
    fill_in "Image6", with: @detail.image6
    fill_in "Image7", with: @detail.image7
    fill_in "Image8", with: @detail.image8
    fill_in "Image9", with: @detail.image9
    fill_in "Plan", with: @detail.plan_id
    fill_in "Price", with: @detail.price
    fill_in "Spot", with: @detail.spot
    fill_in "Text", with: @detail.text
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail" do
    visit details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail was successfully destroyed"
  end
end
