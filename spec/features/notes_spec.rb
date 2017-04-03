require 'rails_helper'
require 'capybara'

describe 'Notes' do
  it 'create notes' do
    visit '/notes/new'

    fill_in('text', with: 'test note')
    click_on('submit')

    expect(page).to have_content('test note')
  end
end