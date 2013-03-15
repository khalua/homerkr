# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  name       :text
#  size       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Assignment do
  describe '.new' do
    it 'creates and instance of Assignment' do
      assignment = Assignment.new
      expect(assignment).to be_an_instance_of(Assignment)
    end
  end

  describe '.create' do
    it 'has an id, a name, and a size' do
      assignment = Assignment.create(name: 'Rockr', size: 2)
      expect(assignment.id).to_not be nil
      expect(assignment.name).to eq('Rockr')
      expect(assignment.size).to eq(2)
    end
  end

end