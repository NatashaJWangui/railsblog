class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # Controller to show article by id
  def show
    @article = Article.find(params[:id])
  end

  # Controller for new article
  def new
    @article = Article.new
  end

  # Create new article
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
