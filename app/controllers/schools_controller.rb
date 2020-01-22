class SchoolsController < ApplicationController
    def index
        @schools = School.all
        @countries = Country.all
    end

    def show
        @school = School.find(params[:id])
        render :layout => "schools_layout"
    end
end
