require 'rails_helper'

user = FactoryBot.create(:user)

feature 'Can view individual posts' do
  scenario 'Can click and view a single post' do
    login_as(user, :scope => :user)
    post = create(:post)

    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    expect(page.current_path).to eq(post_path(post))
  end
end