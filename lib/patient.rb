class Patient

attr_accessor :name, :doctors

@@all = []

def initialize(name)
  @name = name
  @doctors = []
  @@all << self
end

def new_appointment(doctor, date)
  a = Appointment.new(date, self, doctor)
  doctor.patients << self
  @doctors << doctor
end
end
