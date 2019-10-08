require 'rails_helper'

RSpec.describe User, type: :model do

    before :each do
        @username = "sampleuser"
        @password = "samplepassword"
        @email = "sample@email.com"
    end

    describe 'on save' do
        it 'hashes a password' do
            user = User.create(username: @username, email: @email, password: @password)
            user.save

            expect(user.password_digest).not_to eq(user.password)
        end
    end

    xdescribe 'validations' do
        it 'requires a username and a password upon creation' do
            no_username = User.create(email: @email, password: @password)
            no_password = User.create(email: @email, username: @username)
            no_email = User.create(username: @username, password: @password)

            expect(no_username).not_to be_valid
            expect(no_username.errors.full_messages).to include("Username can't be blank")

            expect(no_password).not_to be_valid
            expect(no_password.errors.full_messages).to include(
                "Password can't be blank",
                "Password is too short (minimum is 8 characters)"
            )

            expect(no_email).not_to be_valid
            expect(no_email.errors.full_messages).to include("Email can't be blank")
        end

        it 'requires that the username be unique' do
            User.create(username: @username, email: @email, password: @password)
            duplicate_user = User.create(username: @username, email: @email, password: @password)

            expect(duplicate_user).not_to be_valid
            expect(duplicate_user.errors.full_messages).to include("Username has already been taken")
        end

        it 'requires that a password be at least 8 characters long' do
            too_short = User.create(username: @username, email: @email, password: "imshort")

            expect(too_short).not_to be_valid
            expect(too_short.errors.full_messages).to include("Password is too short (minimum is 8 characters)")
        end

    end
end
