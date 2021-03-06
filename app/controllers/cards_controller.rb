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
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(card_params)
    @user = User.find(params[:user_id])
    @card.save 
    redirect_to @user
  end

  def update
    @card = Card.find(params[:id])
    @user = User.find(params[:user_id])
    if @card.update(card_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    @user = User.find(params[:user_id])
    redirect_to @user
  end

  private
  def card_params
    params.require(:card).permit(:title, :text, :category, :urgency, :user_id)
  end
end
