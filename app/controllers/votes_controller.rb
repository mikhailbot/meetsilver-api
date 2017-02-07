class VotesController < ApplicationController
  before_action :set_vote, only: [:show]

  # GET /votes
  def show
    render json: @vote
  end

  # POST /votes/1
  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end
  
  def vote_params
    params.require(:vote).permit(:name, :option_id)
  end
end
