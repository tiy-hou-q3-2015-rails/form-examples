class HomepageController < ApplicationController
  def list
    @articles =  Article.where("publish_date <= '#{Date.today}'").order("publish_date desc")
  end

  def about
  end
end
