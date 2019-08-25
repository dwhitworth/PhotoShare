require 'rails_helper'

feature 'Deleting posts' do
  background do
    post = create(:post, caption: 'Delete this post.')

    visit '/posts/1'
    click_link 'Edit Post'
  end
  scenario 'Can delete a single post' do
    click_link 'Delete Post'

    # expect(page).to have_content('Post deleted.')
    expect(page).to_not have_content('Delete this post.')
  end
end