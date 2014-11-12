class WelcomeController < ApplicationController
    before_filter :authenticate_user!

    def index
        @schedules = Schedule.find(:all, :conditions => {:user_id => current_user.id})
    end
end
