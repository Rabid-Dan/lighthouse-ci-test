require "rails_helper"

RSpec.describe "fruits/edit", type: :view do
  before do
    let(:fruit) do
      assign(:fruit, Fruit.create!(
                       name: "MyString",
                       colour: "MyString",
                       taste: "MyText"
                     ))
    end
  end

  it "renders the edit fruit form" do
    render

    assert_select "form[action=?][method=?]", fruit_path(fruit), "post" do
      assert_select "input[name=?]", "fruit[name]"

      assert_select "input[name=?]", "fruit[colour]"

      assert_select "textarea[name=?]", "fruit[taste]"
    end
  end
end
