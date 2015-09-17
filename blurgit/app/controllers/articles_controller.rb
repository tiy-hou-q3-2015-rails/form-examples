class ArticlesController < ApplicationController
  def detail
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params.require(:article).permit(:title, :body)
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
    if @article.update params.require(:article).permit(:title, :body)
      redirect_to article_path(id: @article.id)
    else
      render :edit
    end
  end
end
