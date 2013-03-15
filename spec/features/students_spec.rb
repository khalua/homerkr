require 'spec_helper'

describe 'Students' do

  describe 'GET /students' do
    it 'displays main students page, with link to show form' do
      visit students_path
      page.should have_link('Add Student')
    end

    it 'displays add new student form when link clicked', :js => true do
      visit students_path
      click_link('Add Student')
      page.should have_button('Create Student')
    end
  end

  describe 'POST /students' do
    it 'adds a Student to list when form is filled out and button pressed', :js => true do
      visit students_path
      fill_in('student_name', :with => 'Tony')
      click_button('Create Student')
      page.should have_text('Tony')
    end
  end
end
