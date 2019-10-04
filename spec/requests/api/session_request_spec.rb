require 'rails_helper'
require 'json'

RSpec.describe "API::V1::Sessions", type: :request do

    describe "POST /sessions" do

        describe "on success" do

            before(:each) do
                username = "testuser"
                password = "testtest"
                email = "test@email.com"
                @user = User.create(email: email, username: username, password: password)

                params = {
                    username: username,
                    password: password
                }
                post "/api/v1/sessions",
                    params: params.to_json,
                    headers: { 'Content-Type': 'application/json'}
                @response = response
            end

            it "returns the user's JWT token" do
                body = JSON.parse(@response.body)

                expect(@response.status).to eq(200)
                expect(body['message']).to include "You have been authenticated"
                expect(body['message']).to include @user.username
                expect(body['token']).not_to be_empty
            end
        end

        describe "on failure" do

            it "returns a 401 status with a helpful error message" do
                params = {
                    username: "fakeuser",
                    password: "fakepassword"
                }
                post "/api/v1/sessions",
                    params: params.to_json,
                    headers: { 'Content-Type': 'application/json'}
                body = JSON.parse(response.body)

                expect(@response.status).to eq(401)
                expect(body['errors']).to include "Your Username and Password do not match"
                expect(body['token']).to be_nil
            end
        end
    end
end