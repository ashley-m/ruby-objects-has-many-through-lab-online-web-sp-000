class Doctor

attr_accessor :name, :appointments

@@all = []

def initialize(name)
  @name = name
  @appointments = []
  @@all << self
end

def self.all
  @@all
end

def new_appointment(date, patient)
  a = Appointment.new(date, patient, self)
  @appointments << a
  a
end
end
