class SchoolController < ApplicationController
    
    def index
        @schools = School.all
        @countries = Country.all
    end

    def show
        
        @school = School.find(params[:id])
        render :layout => "school_layout"
    end
end
