require 'rails_helper'

RSpec.describe 'index page', type: :feature do
    before(:each) do
        @user = User.create(name: 'Thomas', email: 'tomas@gmail.com', password: '12')
    end

    describe 'index page' do 
        it 'it shows the login part' do
            visit new_user_session_path
            expect(page).to have_content('Log in')
        end

        it 'should shows the remember me text' do
            visit new_user_session_path
            expect(page).to have_content('Remember me')
        end
        it 'should shows the sign up button' do
            visit new_user_session_path
            expect(page).to have_content('Sign up')
        end
        it 'should shows the didnt receive confirmation instructions' do
            visit new_user_session_path
            expect(page).to have_content("Didn't receive confirmation instructions")
        end
        it 'should shows the forgot your password text' do
            visit new_user_session_path
            expect(page).to have_content('Forgot your password?')
        end
    end
end