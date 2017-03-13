require 'rails_helper'

RSpec.feature "User visits the homepage" do
  scenario  "they see existing links" do
    visit root_path
    expect(page).to have_link link.title, href: link.url
  end
end
