require 'rails_helper'

RSpec.describe "Storages", type: :request do
  describe "GET /upload" do
    it "returns http success" do
      get "/storage/upload"
      expect(response).to have_http_status(:success)
    end
  end

end
