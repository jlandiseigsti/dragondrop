class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def edit
  end

  def create
    @card = Card.new(card_params)
    @card.save
    redirect_to @card
  end

  def update
  end

  def destroy
  end

  private card_params
  params.require(:card).permit(:title, :text, :user)
end
