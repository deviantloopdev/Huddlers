class NewsfeedController < ApplicationController
  before_filter :authenticate_user! #ensures that the user is signed in

  def index
    # if !user_signed_in?
      # redirect_to new_user_session_path
    # end
  end
end
