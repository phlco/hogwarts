class StudentsController < ApplicationController

  def index
    @students = Student.all

    render :index
  end

  def show
    @student = Student.find(params[:id])

    render :show
  end

  def create
    if student = Student.create({ name: params[:name] })
      house = House.all.shuffle.first

      house.students << student

      redirect_to student
    else
      render :new
    end

  end

end
