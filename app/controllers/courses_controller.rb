class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user

    if @course.save
      redirect_to new_course_article_path(@course)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.delete
    redirect_to root_path
  end

  private

  def course_params
    params.require(:course).permit(
      :name,
      :topic_id,
      :overview,
      :conclusion
    )
  end
end
