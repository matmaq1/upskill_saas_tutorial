class PagesController < ApplicationController
    # GET /
    def home
        @basic_plan = Plan.find(1)
        @Pro_plan = Plan.find(2)
    end
    
    def about
    end
end

