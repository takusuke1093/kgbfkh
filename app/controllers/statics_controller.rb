class StaticsController < ApplicationController
    def top
    end
    def result
        @schools = School.where(country_id: params[:country_id])
        @countries = Country.all
    end
end

