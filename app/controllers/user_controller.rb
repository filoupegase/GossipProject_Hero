class UserController < ApplicationController
  def show
    @userall = User.all
  end
end
