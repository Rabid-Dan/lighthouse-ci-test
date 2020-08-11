require "rails_helper"

RSpec.describe "posts/new", type: :view do
  before do
    assign(:post, Post.new(
                    name: "MyString",
                    title: "MyString",
                    content: "MyText"
                  ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input[name=?]", "post[name]"

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[content]"
    end
  end
end