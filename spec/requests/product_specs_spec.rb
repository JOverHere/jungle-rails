require 'rails_helper'

RSpec.describe "ProductSpecs", type: :request do
  describe "GET /product_specs" do
    it "works! (now write some real specs)" do
      get product_specs_path
      expect(response).to have_http_status(200)
    end
  end
end
