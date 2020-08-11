require "rails_helper"

RSpec.describe "fruits/new", type: :view do
  before do
    assign(:fruit, Fruit.new(
                     name: "MyString",
                     colour: "MyString",
                     taste: "MyText"
                   ))
  end

  it "renders new fruit form" do
    render

    assert_select "form[action=?][method=?]", fruits_path, "post" do
      assert_select "input[name=?]", "fruit[name]"

      assert_select "input[name=?]", "fruit[colour]"

      assert_select "textarea[name=?]", "fruit[taste]"
    end
  end
end
