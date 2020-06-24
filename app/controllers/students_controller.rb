
class StudentsController < ApplicationController

  def show
    set_student!
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    set_school_class!
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    set_school_class!
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def set_student!
    @student = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit!
  end
end
