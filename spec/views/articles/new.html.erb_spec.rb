require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      title: "MyString",
      location: "MyString",
      excerpt: "MyString",
      body: "MyText"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[location]"

      assert_select "input[name=?]", "article[excerpt]"

      assert_select "textarea[name=?]", "article[body]"
    end
  end
end
