require "rails_helper"

RSpec.describe "Homepage", type: :system do
  before { visit posts_path }

  it_behaves_like "an accessible page"
end
