class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end


  
  def new_appointment(date, patient)
     appointment = Appointment.new(date, patient, self)
     @appointments << appointment
     appointment
  end

  def patients
      self.appointments.collect do |appointment|
                    appointment.patient
    end
  end
end