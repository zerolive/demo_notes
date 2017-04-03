require 'rails_helper'
require 'capybara'

describe 'Notes' do
  before(:each) do
    Note.delete_all
  end

  it 'create notes' do
    visit '/notes/new'

    fill_in('text', with: 'test note')
    click_on('submit')

    expect(page).to have_content('test note')
  end

  it 'update notes' do
    note = Note.new(text: 'test note')
    note.save

    visit '/notes/list'
    click_on('edit')
    fill_in('note_text', with: 'test note edited')
    click_on('submit')

    expect(page).to have_content('test note edited')
  end
end