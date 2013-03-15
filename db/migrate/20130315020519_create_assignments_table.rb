class CreateAssignmentsTable < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text  :name
      t.integer :size
      t.timestamps
    end
  end
end
