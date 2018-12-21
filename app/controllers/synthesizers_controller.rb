class SynthesizersController < ApplicationController
  def index
    render json: Synthesizer.all
  end

  def show
    render json: Synthesizer.find(params[:id])
  end

  # need to make private user params function
end
