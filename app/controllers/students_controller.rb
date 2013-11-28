class StudentsController < ApplicationController
  def create
    @student = Student.new(params[:student])
    
    if @student.save
      redirect_to students_url
    else
      redirect_to new_student_url
    end
  end
  
  def index
    @students = Student.all
  end
  
  def new
    @houses = House.all
    @student = Student.new
  end
  
  def show
    @student = Student.find(params[:id])
  end
end