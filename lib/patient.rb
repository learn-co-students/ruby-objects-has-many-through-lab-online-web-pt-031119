class Patient 

    attr_accessor :name, :appointments  

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
        @appointments = []
    end
    
    def self.all 
        @@all 
    end 

    def new_appointment(doctor, date)
        new_appointment = Appointment.new(date, self, doctor)
        new_appointment 
    end
    
    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    
    def doctors
        self.appointments.collect {|appointments| appointments.doctor}
    end 

end 