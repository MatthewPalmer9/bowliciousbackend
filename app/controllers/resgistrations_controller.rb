class RegistrationsController < ApplicationController
    def create
        user = User.create(
            email: params['user']['email'], 
            password: params['user']['password']
        )

        if user
            session[:user_id] = user.user_id
            render json: {
                status: :create,
                user: user
            }
        else 
            render json: { status: 500 }
        end 
    end 
end 