class SessionsController < ApplicationController
    skip_before_action :verified_user, only [:new, :create]
    def new
        @user = User.new
      end
    
      def create
        if (user = User.create(user_params))
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          render 'new'
        end
      end
      
      def destroy
        session.delete('user_id')
        redirect_to '/'
      end
end
