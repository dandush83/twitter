class TweetsController < ApplicationController

	before_action :authenticate_user!

	def new
		@tweet = Tweet.new
	end

	def create
		puts "coding raails is awesome"
		puts "the params are" + params['tweet']['content']
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		flash[:success] = "You have created a tweet"
		redirect_to root_path
	end

	def tweet_params
		params.require('tweet').permit('content')
	end

end