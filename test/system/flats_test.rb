require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    visit "/" # this line will make a GET request to localhost:3000/
  
    assert_selector "h1", text: "Flats" # look for <h1>Flats</h1> inside the view
  end
end
