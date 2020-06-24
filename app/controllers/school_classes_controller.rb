
class SchoolClassesController < ApplicationController

  def show
    set_school_class!
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

  private

  def set_school_class!
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit!
  end
end
