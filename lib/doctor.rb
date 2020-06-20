class Doctor
    attr_accessor :name 
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all  
    end 

    def new_appointment(date, patient)
        Appointment.new(date, patient, self) 
    end 

    def appointments
        Appointment.all.select do |app|
        app.doctor 
        end 
    end 

    def patients 
        appointments.map do |app|
        app.patient 
        end 
    end     
end 


# Doctor
#   #name
#     has a name (FAILED - 1)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 2)
#   #appointments
#     returns all appointments associated with this Doctor (FAILED - 3)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 4)
#   #patients
#     has many patients, through appointments (FAILED - 5)