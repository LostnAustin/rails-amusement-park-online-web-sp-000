class StaticController < ApplicationController
    skip_before_action :verified_user, only: [:home]
end
