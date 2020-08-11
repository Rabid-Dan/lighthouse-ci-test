require "rails_helper"

RSpec.describe "fruits/index", type: :view do
  before do
    assign(:fruits, [
             Fruit.create!(
               name: "Name",
               colour: "Colour",
               taste: "MyText"
             ),
             Fruit.create!(
               name: "Name",
               colour: "Colour",
               taste: "MyText"
             )
           ])
  end

  it "renders a list of fruits" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Colour".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
