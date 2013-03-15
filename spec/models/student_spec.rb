# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Student do
  describe '.new' do
    it 'creates and instance of Student' do
      student = Student.new
      expect(student).to be_an_instance_of(Student)
    end
  end

  describe '.create' do
    it 'has an id and a name' do
      student = Student.create(name: 'Tony')
      expect(student.id).to_not be nil
      expect(student.name).to eq('Tony')
    end
  end

end
