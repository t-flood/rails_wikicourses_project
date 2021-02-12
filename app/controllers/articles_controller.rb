class ArticlesController < ApplicationController
  def recent
    # @articles = Article.order(:created_at).limit(10)
    @articles = Article.long_articles
  end

  def show
    @article = Article.find(params[:id])

    articles = Article.order(:id)
    articles = articles.where(course_id: @article.course_id)

    @next_article = articles.where("id > ?", @article.id).first
    @previous_article = articles.where("id < ?", @article.id).last
  end

  def new
    @course = Course.find(params[:course_id])
    @article = @course.articles.build
  end

  def create
    @course = Course.find(params[:course_id])
    @article = @course.articles.build(article_params)
    @article.load_from_wikipedia

    if @article.save
      redirect_to edit_article_path(@article)
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article.course
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to @article.course
  end

  private

  def article_params
    params.require(:article).permit(:title, :intro, :outro)
  end
end
