class CoursesController < ApplicationController
  skip_before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @courses = Course.all
    if user_signed_in?
      @entry = current_user.entries.build
    end
    if can? :manage, :all
      @c1 = @courses.where(:course_type_id => 1)
      @c2 = @courses.where(:course_type_id => 2)
      @c3 = @courses.where(:course_type_id => 3)

      @total1 = 0
      @total2 = 0
      @total3 = 0

      @c1entries = 0
      @c2entries = 0
      @c3entries = 0

      @c1.each do |c|
        @c1entries += c.entries.count
      end

      @c2.each do |c|
        @c2entries += c.entries.count
      end

      @c3.each do |c|
        @c3entries += c.entries.count
      end

      if @c1entries > 0
        @total1 = @c1entries * 500
      end
      if @c2entries > 0
      @total2 = @c2entries * 700
      end
      if @c3entries > 0
      @total3 = @c3entries * 800
      end

      @total = @total1 + @total2 + @total3
      end
      @first_date = @courses.order('start_date asc').first
      @last_date = @courses.order('start_date asc').last
  end

  def show
    @course = Course.find(params[:id])
    @entry = current_user.entries.build
    @entries = Entry.where(:course_id => @course.id)

    @entry_count = @course.entries.count
    @totalspots = @course.course_type.design.capacity * @course.course_type.ship_amount
    @freespots = @totalspots - @entry_count
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
