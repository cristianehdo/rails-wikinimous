class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    new_article = Article.new(article_params)
    new_article.save
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  #methode call at the begin on #show, #edit, #update, #destroy
  def set_article
    @article = Article.find(params[:id])
  end

end
