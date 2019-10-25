require 'rails_helper'
require 'json'

RSpec.describe "API::V1::Users", type: :request do

    describe "GET /users/" do

        describe "on success" do
            before(:each) do
                @user1 = User.create(email: "example1@email.com", username: "sampleuser1", password: "samplepassword")
                @user2 = User.create(email: "example2@email.com", username: "sampleuser2", password: "samplepassword")
            end

            it "returns a list of users user" do
                get "/api/v1/users"

                body = JSON.parse(response.body)
                expect(response.status).to eq(200)
                expect(body.count).to eq(2)
                expect(body.first["id"]).to eq(@user1.id)
                expect(body.last["id"]).to eq(@user2.id)

            end
        end
    end

    describe "POST /users" do

        describe "on success" do

            before(:each) do
                params = {
                    user: {
                        username: "testuser",
                        password: "testtest",
                        email: "test@email.com"
                    }
                }
                post "/api/v1/users",
                    params: params.to_json,
                    headers: { 'Content-Type': 'application/json'}
                @response = response
            end

            it "creates a user from the params" do
                expect(User.all.count).to eq(1)
            end

            it "returns the new user's JWT token" do
                body = JSON.parse(@response.body)

                expect(@response.status).to eq(200)
                expect(body['token']).not_to be_empty
            end
        end

        # This test is pending validation implementation
        describe "on validation error" do

            it "required a valid email and password" do
                params = {
                    user: {
                        username: "",
                        email: "",
                        password: ""
                    }
                }

                post "/api/v1/users",
                    params: params.to_json,
                    headers: { 'Content-Type': 'application/json'}

                body = JSON.parse(response.body)

                #expect(response.status).to eq(400)
                expect(body["errors"]).to eq([
                    "Password can't be blank",
                    "Password is too short (minimum is 8 characters)",
                    "Email can't be blank",
                    "Username can't be blank"
                ])
            end
        end
    end

    # This test is pending implementation of the show controller
    describe "GET /users/:id" do

        describe "on success" do
            before(:each) do
                @user = User.create(email: "example@email.com", username: "sampleuser", password: "samplepassword")
            end

            it "returns a user" do
                get "/api/v1/users/#{@user.id}"

                body = JSON.parse(response.body)
                expect(response.status).to eq(200)
                expect(body['user']['id']).to eq(@user.id)
                expect(body['user']['username']).to eq(@user.username)
                expect(body['user']['email']).to eq(@user.email)
                expect(body['user']['password_digest']).to eq(nil)

            end
        end

        describe "on failure" do
            it "returns a status of 404 with an error message" do

                get "/api/v1/users/5"

                body = JSON.parse(response.body)

                expect(response.status).to eq(404)
                expect(body["errors"]).to eq([{"message"=> "Page not found"}])
            end
        end
    end
end