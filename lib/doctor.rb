class Doctor # genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, name)
        Appointment.new(date, name, self)
    end

    def patients
        appointments.collect do |appointment|
            appointment.patient
        end
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def self.all
        @@all
    end
end