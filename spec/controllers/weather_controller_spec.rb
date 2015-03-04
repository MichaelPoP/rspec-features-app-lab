require 'rails_helper'

RSpec.describe WeatherController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #umbrella" do
    it "returns http success" do
      get :umbrella
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #noumbrella" do
    it "returns http success" do
      get :noumbrella
      expect(response).to have_http_status(:success)
    end
  end

end
