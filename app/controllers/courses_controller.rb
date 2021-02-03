class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params(:name, :topic_id))
    @course.user = current_user
    if @course.save!
      redirect_to new_course_article_path(@course)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params(*args)
    params.require(:course).permit(*args)
  end
end
