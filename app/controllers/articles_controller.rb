class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      render action: 'index'
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
