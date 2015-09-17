class HomepageController < ApplicationController
  def list
    @articles =  Article.all.order("created_at desc")
  end

  def about
  end
end
