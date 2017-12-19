class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))

    if @student.save
      redirect_to student_path(@student)
    else
      render html: "uh oh"
    end

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    if @student.save
      redirect_to student_path(@student)
    else
      render html: "uh oh!"
    end

  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

  end
