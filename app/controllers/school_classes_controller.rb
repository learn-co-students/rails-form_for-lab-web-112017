class SchoolClassesController < ApplicationController
# SchoolClassesController POST create with valid attributes creates a new school_class
# SchoolClassesController POST create with valid attributes redirects to the new school_class
  
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new    
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(school_classes_params)
    @school_class.save
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render 'new'
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    if @school_class.update(school_classes_params)
      redirect_to school_class_path(@school_class)
    else
      render 'edit' 
    end
  end

  private

  def school_classes_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
