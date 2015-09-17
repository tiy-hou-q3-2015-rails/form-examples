class ArticlesController < ApplicationController
  def detail
    @article = Article.find params[:id]
  end
end
