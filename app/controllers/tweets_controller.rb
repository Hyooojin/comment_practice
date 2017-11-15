class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
  end

  def create
    Tweet.create(
      content: params[:content]
      )
      redirect_to '/tweets/index'
  end
  
  def show
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(
      content: params[:content]
      )
      redirect_to '/'
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    
    redirect_to '/'
  end
end
