class PagesController < ApplicationController
  def home
    if current_user
      redirect_to levels_path
    end
  end
  def about
  end
end
