
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

  private

  def set_school_class!
    @school_class = SchoolClass.find(params[:id])
  end
end
