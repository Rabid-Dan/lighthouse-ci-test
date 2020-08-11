require "rails_helper"

RSpec.describe "fruits/show", type: :view do
  before do
    @fruit = assign(:fruit, Fruit.create!(
                              name: "Name",
                              colour: "Colour",
                              taste: "MyText"
                            ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/MyText/)
  end
end
