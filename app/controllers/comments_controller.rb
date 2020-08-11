class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments.to_json(:except => [:created_at, :updated_at])
    end 

    def create 
        @comment = Comment.create(name: params[:name], comment: params[:comment])
        if @comment.save
            render json: @comment
        else 
            render json: {error: 'Error saving comment'}
        end
    end 
end 