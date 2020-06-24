
class StudentsController < ApplicationController

  def show
    set_student!
  end

  def new
    @student = Student.new
  end

  def edit
    set_student!
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
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
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end