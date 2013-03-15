require 'spec_helper'

describe 'Assignments' do

  describe 'GET /assignments' do
    it 'displays main assignments page, with link to show form' do
      visit assignments_path
      page.should have_link('Add Assignment')
    end
  end
end
