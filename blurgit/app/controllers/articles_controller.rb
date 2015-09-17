class ArticlesController < ApplicationController
  def detail
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    @article = Article.find params[:id]
    if @article.update article_params
      redirect_to article_path(id: @article.id)
    else
      render :edit
    end
  end

  def article_params
    params.require(:article).permit(:title, :body, :publish_date)
  end
end
