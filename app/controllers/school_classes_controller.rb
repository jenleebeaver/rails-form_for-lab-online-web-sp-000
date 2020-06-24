
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
  end

  private

  def set_school_class!
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
  end
end
