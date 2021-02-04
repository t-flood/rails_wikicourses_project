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

    @article = @course.articles.build(
      title: article.title,
      iframe_link: article.fullurl
    )

    if @article.save!
      redirect_to edit_course_article_path(@course, @article)
    else
      render :new
    end
  end

  def edit
    @article = @course.articles.find(params[:id])
  end

  def update
    @article = @course.articles.find(params[:id])
    @article.update(article_params)
    redirect_to course_path(@course)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def article_params(*args)
    params.require(:article).permit(*args)
  end
end
