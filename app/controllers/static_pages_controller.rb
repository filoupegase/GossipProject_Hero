class StaticPagesController < ApplicationController

  def home
    @userall = User.all

  end

  def contact
  end

  def team

  end
end
