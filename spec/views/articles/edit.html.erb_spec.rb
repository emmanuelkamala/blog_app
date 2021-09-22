require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      title: "MyString",
      location: "MyString",
      excerpt: "MyString",
      body: "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[title]"

      assert_select "input[name=?]", "article[location]"

      assert_select "input[name=?]", "article[excerpt]"

      assert_select "textarea[name=?]", "article[body]"
    end
  end
end
