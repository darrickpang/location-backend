class TripsController < ApplicationController
    def create
        clean_old_trips
        trip = Trip.create!(trip_params)
        render json: trip.to_json
    end

    private
    def trip_params
        params.require(:trip).require(:name, :owner_uuid, :viewer_uuid)
    end
end