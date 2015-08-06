require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'anagram? path', { type: :feature } do
  it 'compares word to a list of words and returns words from list that are anagrams of the word' do
    visit '/'
    fill_in 'word', with: 'cat'
    fill_in 'string', with: 'dog bird monkey tiger act tac'
    click_button 'Send'
    expect(page).to have_content('act tac')
  end
end
