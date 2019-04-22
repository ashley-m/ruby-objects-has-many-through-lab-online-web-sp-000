class Doctor

attr_accessor :name, :appointments, :patients

@@all = []

def initialize(name)
  @name = name
  @appointments = []
  @patients = []
  @@all << self
end

def self.all
  @@all
end

def new_appointment(date, patient)
  a = Appointment.new(date, patient, self)
  @appointments << a
  @patients << patient
  a
end
end
