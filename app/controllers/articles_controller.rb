class ArticlesController < ApplicationController
  before_action :set_course

  def new
    @article = @course.articles.build
  end

  def show
    @article = @course.articles.find(params[:id])
  end

  def create
    article = Wikipedia.find(params[:article][:title])

    @article = @course.article.build(
      title: article.title,
      iframe_link: article.fullurl
    )

    if @article.save!
      redirect_to course_article_path(@course, @article)
    else
      redirect_to courses_path
    end
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
