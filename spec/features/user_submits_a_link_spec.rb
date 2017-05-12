require 'rails_helper'

RSpec.feature 'User submits a link' do
  scenario 'they see the page for the submitted link' do
    link = create(:link)

    visit root_path
    click_on  'Submit a new link'
    fill_in 'link_title', with: link.title
    fill_in 'link_url', with: link.url
    click_on 'Submit!'

    expect(page).to have_link link.title, href: link.url
  end

  context 'the form is invalid' do
    context 'no url is present' do
      scenario 'they see an error message' do
        link_title = 'This Testing Rails book is awesome!'

        visit root_path
        click_on 'Submit a new link'
        fill_in 'link_title', with: link_title
        click_on 'Submit!'

        expect(page).to have_content "Url can't be blank"
      end
    end

    context 'no title is present' do
      scenario 'they see an error message' do
        link_url = 'http://testingrailsbook.com'

        visit root_path
        click_on 'Submit a new link'
        fill_in 'link_url', with: link_url
        click_on 'Submit!'

        expect(page).to have_content "Title can't be blank"
      end
    end
  end
end
