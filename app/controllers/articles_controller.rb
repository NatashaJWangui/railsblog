class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # Controller to show article by id
  def show
    @article = Article.find(params[:id])
  end
end
