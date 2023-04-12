require 'rails_helper'

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

RSpec.describe "/generators", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Generator. As you add validations to Generator, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Generator.create! valid_attributes
      get generators_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      generator = Generator.create! valid_attributes
      get generator_url(generator)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_generator_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      generator = Generator.create! valid_attributes
      get edit_generator_url(generator)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Generator" do
        expect {
          post generators_url, params: { generator: valid_attributes }
        }.to change(Generator, :count).by(1)
      end

      it "redirects to the created generator" do
        post generators_url, params: { generator: valid_attributes }
        expect(response).to redirect_to(generator_url(Generator.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Generator" do
        expect {
          post generators_url, params: { generator: invalid_attributes }
        }.to change(Generator, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post generators_url, params: { generator: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested generator" do
        generator = Generator.create! valid_attributes
        patch generator_url(generator), params: { generator: new_attributes }
        generator.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the generator" do
        generator = Generator.create! valid_attributes
        patch generator_url(generator), params: { generator: new_attributes }
        generator.reload
        expect(response).to redirect_to(generator_url(generator))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        generator = Generator.create! valid_attributes
        patch generator_url(generator), params: { generator: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested generator" do
      generator = Generator.create! valid_attributes
      expect {
        delete generator_url(generator)
      }.to change(Generator, :count).by(-1)
    end

    it "redirects to the generators list" do
      generator = Generator.create! valid_attributes
      delete generator_url(generator)
      expect(response).to redirect_to(generators_url)
    end
  end
end
