class HealthcheckController < ApplicationController
  def alive
    render json: { alive: true }
  end
end
