class User < ApplicationRecord
    has_many :events, :foreign_key => "creator_id"
    has_many :attendances
    has_many :attended_events, through: :attendances, :source => "event"
    has_many :invitations

    def past_events
        array = []
        allevents = self.attended_events 
        allevents.each do |event|
            if event.date < DateTime.current
                array << event 
            end 
        end
             if array.nil? 
            print "no upcoming events scheduled"
        else 
        array
    end
    end 

#does not work
    def future_events
        array = []
        allevents = self.attended_events 
        allevents.each do |event|
            if event.date > DateTime.current
                array << event 
            end 
        end
        if array.nil? 
            print "no upcoming events scheduled"
        else 
        array
    end
    end 

end
