require 'rails_helper'

feature 'Creating Comments' do
  scenario 'can comment on an existing post' do
    user = FactoryBot.create :user
    post = create(:post, user_id: user.id)
    login_as(user, :scope => :user)

    visit '/'
    fill_in "comment_content_#{post.id}", with: 'Yay!'
    click_button 'Submit'
    
    expect(page).to have_content('Yay!')
  end
end
