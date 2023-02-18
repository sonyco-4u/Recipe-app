require 'rails_helper'
Rspec.describe 'Login specifics', js: true do
  it 'Test username and password inputs and the "Submit" button.' do
    visit('/users/sign_in')
    expect(page).to have_field('Email', type: 'email')
    expect(page).to have_field('Password', type: 'password')
    expect(page).to have_button('Log in', type: 'submit')
  end

  it 'Get error when I click the submit without filling in the username and password' do
    vsit('/users/sign_in')
    fill_in('Email', with: '')
    fill_in('Password', with: '')
    click_button('Log in')
    expect(page).to have_content('Invalid Email or pasword')
  end

  it 'get error when I click the submit button after filling in the username and the password with incorrect data' do
    visit('/users/sign_in')
    fill_in('Email', with: 'john@gmail.com')
    fill_in('Password', with: 'john316')
    click_button('Log in')
    expect(page).to have_content('Invalid Email or password')
  end

  it 'should redirect to the root page when clicking submit button with correct data' do
    visit('/users/sign_in')
    fill_in('Email', with: 'kelvin@gmail.com')
    fill_in('Password', with: '123456')
    click_button('Log in')
    expect(current_path).to have_content('/users')
  end
end
