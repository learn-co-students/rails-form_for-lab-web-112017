class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

end





# Controllers - Create controller files for school_classes and students. Build out the new, create, show, edit, and update actions in each of the controllers.
