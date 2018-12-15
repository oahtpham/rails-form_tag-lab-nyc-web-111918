class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    render new_student_path
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  # private
  #
  # def student_params
  #     params.require.permit(:first_name,:last_name)
  # end

end
