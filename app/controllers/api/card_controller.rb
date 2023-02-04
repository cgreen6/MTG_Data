class Api::CardController < ApplicationController
  before_action :set_plant
  before_action :set_note, only: [:show, :update, :destroy]

  def index
    render json: @card.all
  end

  def show
    @card = card.find(params[:id])
    render json: @card
  end

  def create
    @card = @card.new(card_params)
    if @card.save
      render json: @card
    else
      render json: { errors: @card.errors }, status: :unprocessable_entity
    end
  end

  def update
    @card = card.find(params[:id])
    if @card.update(card_params)
      render json: @card  
    else
      render json: { errors: @card.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @card.destroy
    render json: { message: 'card deleted' }
  end

  private
    def card_params
      params.require(:card).permit(:name, :type, :color, :cmc, :text, :flavour, :power, :toughness, :set, :rl)
    end

    # def set_plant
    #   @plant = Plant.find(params[:plant_id])
    # end

    # def set_note
    #   @note = @plant.notes.find(params[:id])
    # end
end
