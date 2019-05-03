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

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.select {|item| item.doctor == self}
end

def patients
  Appointment.all.map do |item|
    if item.doctor == self
      item.patient
    end
  end
end


end
