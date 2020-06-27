class Patient

    attr_accessor :patient_name

    @@all = []

    def initialize(patient_name)

        @patient_name = patient_name
        @@all << self

    end

    def self.all

        @@all

    end

    def new_appointment(name, doctor)

        Appointment.new(name, self, doctor)

    end

    def appointments

        Appointment.all.select do |appointments|
            appointments.patient == self
        end

    end

    def doctors

        appointments.map do |appointment|
            appointment.doctor
        end


    end

end
