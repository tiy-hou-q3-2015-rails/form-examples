class HomepageController < ApplicationController
  def list
    @articles =  Article.all
  end

  def about
  end
end
