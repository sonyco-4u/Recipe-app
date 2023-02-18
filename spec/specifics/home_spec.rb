require 'rails_helper'

Rspec.feature 'home page', js: true, type: :feature do
  background do
    visit user_session_path
    @user1 = User.create!(email: 'kelvin@gmail.com', password: '123456', confirmed_at: Time.now)
    fill_in 'Email', with: 'kelvin@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'

    visit foods_path
    click_button 'Add Food'

    visit new_food_path
    @food1 = @user1.foods.create!(name: 'Ugali', price: 12, measurement_unit: 'unit')

    click_button 'submit'
    visit foods_path
  end
  it 'should include added food' do
    expect(page).to have_content 'Ugali'
    expect(page).to have_content '12'
    expect(page).to have_content 'unit'
  end
end
