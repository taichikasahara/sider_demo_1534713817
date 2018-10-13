class MicropostsController < ApplicationController
  def create
    content = params.require(:micropost).require(:content)
    current_user.microposts.create(content: content)
    redirect_back()
  end
end
