class SynthesizersController < ApplicationController
  def index
    render json: Synthesizer.all
  end

  def show
    render json: Synthesizer.find(params[:id])
  end

  def create
    render json: Synthesizer.create(strong_params)
  end

  def update
    Synthesizer.find(params[:id]).update(strong_params)
    render json: Synthesizer.find(params[:id])
  end

  def destroy
    render json: Synthesizer.find(params[:id]).destroy
  end

  private
    def strong_params
      params.require(:synthesizer).permit(:name, :user_id,
      :waveform, :gain, :attackTime, :decayTime, :sustainLevel, :releaseTime)
    end
end
