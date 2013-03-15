require 'spec_helper'

describe 'Welcome Page' do
  describe 'Get /' do
    it 'displays the students link' do
      visit root_path
      page.should have_link('Students')
    end
  end
end