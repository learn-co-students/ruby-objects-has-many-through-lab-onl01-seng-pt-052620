class Patient
    attr_accessor :name, :appointment, :doctor
    @@all_appointment = []
    def initialize(name)
      @name = name
      @appointment = appointment
      @doctor = doctor
      @@all_appointment << self
      save
    end
    def self.all
      @@all_appointment
    end
    def appointments
      Appointment.all.select {|appointment| appointment.patient == self}
    end
    def doctors
      appointments.map {|appointment| appointment.doctor}
    end
    def new_appointment(date, doctor)
      Appointment.new(date, self, doctor)
    end
    def save
      @@all_appointment << self
    end
  end