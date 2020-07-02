class Patient #artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, name)
        Appointment.new(date, self, name)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        appointments.collect do |appointment|
            appointment.doctor
        end
    end

    def self.all
        @@all
    end
end