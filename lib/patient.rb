class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self

  end

  def new_appointment(doctor,date)
    newAppt = Appointment.new(date,self,doctor)
    @appointments << newAppt
    @doctors << doctor
    newAppt

  end

  def appointments
    @appointments
  end

  def self.all
    @@all
  end

  def doctors
    @doctors
  end

  
end