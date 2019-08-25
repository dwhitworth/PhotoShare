require 'rails_helper'

user = FactoryBot.create(:user)

feature 'Index displays a list of posts' do
  scenario 'the index displays correct created post information' do
    login_as(user, :scope => :user)
    post_one = create(:post, caption: "This is post one")
    post_two = create(:post, caption: "This is the second post")

    visit '/'
    expect(page).to have_content("This is post one")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='test1']")
  end
end