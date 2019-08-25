require 'rails_helper'

feature 'Editing posts' do
  background do
    post = create(:post)

    visit '/posts/1'
    click_link 'Edit Post'
  end
  scenario 'Can edit a post' do
    fill_in 'Caption', with: "I've edited my post"
    click_button 'Update Post'

    expect(page).to have_content("Post updated")
    expect(page).to have_content("I've edited my post")
  end
end