class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end02

  def create
    student = Student.new
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.save
  end

end
