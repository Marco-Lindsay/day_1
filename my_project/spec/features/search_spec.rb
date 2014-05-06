require "spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Twitter"
    click_on "Google Search"
    page.text.must_include "twitter.com"

    page.text.must_include "en.wikipedia.org/wiki/Twitter‎"
  end
end