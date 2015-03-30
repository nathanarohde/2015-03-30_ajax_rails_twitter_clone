class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    respond_to do |format|
      format.html { redirect_to tweets_url }
      format.js
    end
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    respond_to do |format|
      format.html { redirect_to tweets_url }
      format.js
    end
  end

  def destroy
    @tweet = Tweet.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to tweets_url }
      format.js
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text)
  end

end
