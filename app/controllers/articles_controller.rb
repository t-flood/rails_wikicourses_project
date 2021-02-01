class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    article = Wikipedia.find(params[:article][:title])
    @article = Article.new(title: article.title, iframe_link: article.fullurl)

    if @article.save
      redirect_to article_path(@article)
    else
      #redirect to courses
      redirect_to courses_path
  end
end
