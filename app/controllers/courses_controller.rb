class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to @course
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    @course.update(course_params)
    redirect_to @course
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private

    def course_params
      params.require(:course).permit(:course_type_id, :start_date, :description)
    end
end
