class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def show
		restaurant_id = params[:id]
		@restaurant = Restaurant.find(restaurant_id)
	end

	def new
		@restaurant = Restaurant.new
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant])
		if @restaurant.save
			redirect_to restaurants_path
		else
			render :new
		end

	end

	def update
		@restaurant = Restaurant.find(params[:id])

		if @restaurant.update_attributes(params[:restaurant])
			redirect_to @restaurant
		else
			render :edit
		end
	end

	def destroy
		restaurant = Restaurant.find(params[:id])
		restaurant.delete
		redirect_to restaurants_path
	end
end











