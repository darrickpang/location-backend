class TripChannel < ApplicationCable::Channel
    def subscribed
        stream_from "trip_#{params[:room]}"
    end
  
    def receive(data)
        trip = Trip.find_by!(owner_uuid: data['owner_uuid'])
  
        ActionCable.server.broadcast("trip_#{params[:room]}", {
            lat: data['lat'],
            lon: data['lon'],
            captured_at: data['captured_at']
        })
    end
end