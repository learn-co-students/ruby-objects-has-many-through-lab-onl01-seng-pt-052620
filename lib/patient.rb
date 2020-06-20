class Patient 
    @@all = [] 
    def initialize(name)
        @name = name
        @@all << self   
    end  

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def self.all 
        @@all 
    end 

    def appointments
        Appointment.all.select do |app|
        app.patient == self 
        end  
    end 

    def doctors 
        appointments.map do |app|
        app.doctor
        end 
    end 
end 


# Patient
#   #new
#     initializes with a name (FAILED - 10)
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient (FAILED - 11)
#   .all
#     knows about all patients (FAILED - 12)
#   #appointments
#     returns all appointments associated with this Patient (FAILED - 13)
#   #doctors
#     has many doctors through appointments (FAILED - 14)