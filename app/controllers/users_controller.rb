class UsersController < ApplicationController
    def home
        render json: {status: "It is working"}
    end 
end