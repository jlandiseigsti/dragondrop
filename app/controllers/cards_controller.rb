class CardsController < ApplicationController
  def index
    @cards = Card.all
    @user_id = params[:user_id]
    @user = User.find(params[:user_id])
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
    @user_id = params[:user_id]
    @user = User.find(params[:user_id])
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

  private
  def card_params
    params.require(:card).permit(:title, :text, :user_id)
  end
end
