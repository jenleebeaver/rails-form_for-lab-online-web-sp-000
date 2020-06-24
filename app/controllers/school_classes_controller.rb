
class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.fin
  end

  private

  def set_school_class!
    @school_class = SchoolClass.find(params[:id])
  end
end
