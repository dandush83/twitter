class TweetsController < ApplicationController

	def new
		@tweet = Tweet.new
	end

	def create
		puts "coding raails is awesome"
		puts "the params are" + params['tweet']['content']
		@tweet = Tweet.new(tweet_params)
		@tweet.save
	end

	def tweet_params
		params.require('tweet').permit('content')
	end
end
