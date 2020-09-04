class SightingSerializer

    def initizialize(sighting_object)
        @sighting = sighting_object
    end

    def to_serialized_json
        @sighting.to_json(:include => {
            :bird => {:only => [:name, :species]},
            :loction => {:only => [:latitude, :longitude]}
        }, :except => [:updated_at])
    end
end