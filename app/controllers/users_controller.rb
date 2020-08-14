class UsersController < ApplicationController

    def index
        @users = User.all.for_tenant(request.subdomain)
    end
  
  end
  