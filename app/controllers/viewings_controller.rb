class ViewingsController < ApplicationController
  before_action :set_match, except: [:index]
  def new
    @viewings = Viewing.new
  end

  def create
    @viewing = Viewing.new(viewing_params)
    @viewing.match = @match
    @viewing.save
    redirect_to viewings_path
  end

  def index
    @viewings = current_user.viewings
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

  def viewing_params
    params.require(:viewing).permit(:date, :start_time, :end_time)
  end
end
