class StudentsController < ApplicationController
  def index
    @students = Student.order(:name)
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(params[:student])
    redirect_to(students_path)
  end
end