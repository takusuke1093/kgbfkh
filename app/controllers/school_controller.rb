class SchoolController < ApplicationController
    def index
        @school = School.find(params[:id])
    end

    def show
        @school = School.find(params[:id])
    end
end
