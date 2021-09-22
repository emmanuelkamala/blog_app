require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "Title",
        location: "Location",
        excerpt: "Excerpt",
        body: "MyText"
      ),
      Article.create!(
        title: "Title",
        location: "Location",
        excerpt: "Excerpt",
        body: "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Excerpt".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
