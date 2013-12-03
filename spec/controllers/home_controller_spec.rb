require 'spec_helper'

describe HomeController do
  describe "GET #index" do
    it "gathers the appropriate pages" do
      get :index
      expect(assigns(:pages).map(&:path)).to eq(Page.page_files.map(&:path))
    end

    it "responds successfully with 200" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the correct template" do
      get :index
      expect(response).to render_template :index
    end
  end
end
