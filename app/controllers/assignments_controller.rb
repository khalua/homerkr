class AssignmentsController < ApplicationController

  def index
  end

  def new
    @assignment = Assignment.new
  end

end