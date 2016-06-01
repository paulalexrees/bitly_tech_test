require 'rails_helper'

describe 'bitly' do

  context 'showing URL form' do

    it 'has an input field for a URL' do
      visit '/'
      expect(page).to have_field("URL-input")
    end

    it 'has a submit button' do
      visit '/'
      expect(page).to have_button("Submit")
    end

    it 'takes you to your shortened link page on submit' do
      visit '/'
      click_button "Submit"
      expect(page).to have_content "Your shortened link:"
    end

  end

end
