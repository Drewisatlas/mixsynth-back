class UserSynthesizersController < ApplicationController

  def index
    render json: UserSynthesizer.all
  end

  def show
    render json: UserSynthesizer.find(params[:id])
  end

  def create
    render json: UserSynthesizer.create(strong_params)
  end

  def update
    UserSynthesizer.find(params[:id]).update(strong_params)
    render json: UserSynthesizer.find(params[:id])
  end

  def destroy
    render json: UserSynthesizer.find(params[:id]).destroy
  end

  private
    def strong_params
      params.require(:user_synthesizer).permit(:user_id, :synthesizer_id)
    end
end
