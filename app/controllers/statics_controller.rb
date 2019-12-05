class StaticsController < ApplicationController
    def top
        @countries = Country.all
    end
    def result
        @schools = School.where(country_id: params[:country_id])
    end
end

