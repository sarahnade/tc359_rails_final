class StaticController < ApplicationController
  def cats
    @cats = CatAPI.new.get_images(results_per_page: params[:number_of_cats] || 1)
  end

  def home
  end

  def about
  end
end
