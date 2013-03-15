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
      click_link('Add Student')
      fill_in('student_name', :with => 'Tony')
      click_button('Create Student')
      page.find('li', :text => 'Tony')
    end

    it 'alphabetizes the entries, like a boss', :js => true do
      visit students_path
      click_link('Add Student')
      fill_in('student_name', :with => 'Zed')
      click_button('Create Student')
      fill_in('student_name', :with => 'Aly')
      click_button('Create Student')
      page.find('li:nth-child(1)', :text => 'Aly')
      page.find('li:nth-child(2)', :text => 'Zed')
    end
  end
end
