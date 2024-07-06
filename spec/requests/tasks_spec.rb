require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /index" do
    context "index" do
      it "returns http success" do
        get tasks_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
