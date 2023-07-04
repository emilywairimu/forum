class UsersController < ApplicationController
    def create
        user = User.create(username: params[:username],email: params[:email], password: params[:password])
        render json: user, status: :created
      end

      def current
        if session[:user_id]
          @current_user ||= User.find(session[:user_id])
        else
          @current_user = nil
        end
    
        if @current_user
          render json: @current_user
        else
          render json: { error: 'Not authenticated' }, status: :unauthorized
        end
      end
end
