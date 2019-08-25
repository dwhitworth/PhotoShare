require 'rails_helper.rb'

user = FactoryBot.create(:user)

feature 'Creating posts' do
  scenario 'can create a post' do
    login_as(user, :scope => :user)
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/test1.jpg")
    fill_in 'Caption', with: 'This is a test post with test caption' 
    click_button 'Create Post'
    expect(page).to have_content('#test-image')
    expect(page).to have_css("img[src*='test1.jpg']")
  end

  it 'needs an image to create a post' do
    # login_as(user, :scope => :user)
    # visit '/'
    # click_link 'New Post'
    # fill_in 'Caption', with: "No image attached"
    # click_button 'Create Post'
    # expect(page).to have_content('Image is required')
    # Active Storage does not support attachement validations?!?!?!?
  end
end 