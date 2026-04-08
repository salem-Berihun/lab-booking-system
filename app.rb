require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "errors"


user1 = User.new(id: 1, name: "Mahi", role: "student")
user2 = User.new(id: 2, name: "Sara", role: "assistant")


resource1 = Resource.new(id: 1, name: "Microscope", category: "lab")
resource2 = Resource.new(id: 2, name: "Projector", category: "equipment")


booking1 = Booking.new(user: user1, resource: resource1)
puts "Booking created: #{booking1.status}"


begin
  Booking.new(user: user2, resource: resource1)
rescue => e
  puts "Error: #{e.message}"
end


booking1.cancel
puts "Booking cancelled"


booking2 = Booking.new(user: user2, resource: resource1)
puts "New booking created: #{booking2.status}"
