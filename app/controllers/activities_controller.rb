class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where(:user_id => current_user.id)
  end
end