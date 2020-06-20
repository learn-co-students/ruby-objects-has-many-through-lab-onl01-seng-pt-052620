class Appointment
    attr_accessor :date, :patient, :doctor 
    @@all = [] 
    def initialize(date, patient, doctor)
        @date = date 
        @patient = patient 
        @doctor = doctor 
        @@all << self 
    end  

    def self.all
        @@all  
    end 


end 



# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 6)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 7)
#   #patient
#     belongs to a patient (FAILED - 8)
#   #doctor
#     belongs to a doctor (FAILED - 9)