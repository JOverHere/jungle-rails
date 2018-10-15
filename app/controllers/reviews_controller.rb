class ReviewsController < ApplicationController

   def create
    puts "test3"
        review = Review.new(
          product_id: params[:product_id],
          user_id: session[:user_id],
          description: params[:review][:description],
          rating: params[:review][:rating])

         if review.save
          redirect_to product_path(params[:product_id])
        else
          redirect_to product_path(params[:product_id])
         end
    end

       def destroy
        @review = Review.find params[:id]
        @review.destroy
        redirect_to product_path(params[:product_id])
       end

 #   raise "yay, i'm here"
 end


