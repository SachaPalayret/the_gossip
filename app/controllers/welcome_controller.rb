class WelcomeController < ApplicationController
  def identification
  end

  def connected
    @user =User.create(first_name: params["user_first_name"], last_name: paramas["user_last_name"])
  end

  def home
  end

  def gossip
    @gossip = Gossip.find(params["show"])
  end

  def user
    @user_find = User.find(params["auteur"])
  end
end
