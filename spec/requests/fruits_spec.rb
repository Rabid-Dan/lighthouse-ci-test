require "rails_helper"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/fruits", type: :request do
  # Fruit. As you add validations to Fruit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip("Add a hash of attributes valid for your model")
  end

  let(:invalid_attributes) do
    skip("Add a hash of attributes invalid for your model")
  end

  describe "GET /index" do
    it "renders a successful response" do
      Fruit.create! valid_attributes
      get fruits_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      fruit = Fruit.create! valid_attributes
      get fruit_url(fruit)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_fruit_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      fruit = Fruit.create! valid_attributes
      get edit_fruit_url(fruit)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Fruit" do
        expect do
          post fruits_url, params: { fruit: valid_attributes }
        end.to change(Fruit, :count).by(1)
      end

      it "redirects to the created fruit" do
        post fruits_url, params: { fruit: valid_attributes }
        expect(response).to redirect_to(fruit_url(Fruit.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Fruit" do
        expect do
          post fruits_url, params: { fruit: invalid_attributes }
        end.to change(Fruit, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post fruits_url, params: { fruit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      it "updates the requested fruit" do
        fruit = Fruit.create! valid_attributes
        patch fruit_url(fruit), params: { fruit: new_attributes }
        fruit.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the fruit" do
        fruit = Fruit.create! valid_attributes
        patch fruit_url(fruit), params: { fruit: new_attributes }
        fruit.reload
        expect(response).to redirect_to(fruit_url(fruit))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        fruit = Fruit.create! valid_attributes
        patch fruit_url(fruit), params: { fruit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested fruit" do
      fruit = Fruit.create! valid_attributes
      expect do
        delete fruit_url(fruit)
      end.to change(Fruit, :count).by(-1)
    end

    it "redirects to the fruits list" do
      fruit = Fruit.create! valid_attributes
      delete fruit_url(fruit)
      expect(response).to redirect_to(fruits_url)
    end
  end
end
