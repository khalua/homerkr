require 'spec_helper'

describe 'Welcome Page' do
  describe 'Get /' do
    it 'displays the students link' do
      visit root_path
      page.should have_link('Students')
    end

    it 'displays the assignments link' do
      visit root_path
      page.should have_link('Assignments')
    end
  end
end
