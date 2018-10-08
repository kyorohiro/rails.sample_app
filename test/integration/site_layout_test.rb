require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get static_pages_home_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", static_pages_home_path, count: 1
    assert_select "a[href=?]", static_pages_help_path
    assert_select "a[href=?]", static_pages_about_path
    assert_select "a[href=?]", static_pages_contact_path
  end
end
