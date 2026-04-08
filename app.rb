require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "errors"

# Create users
user1 = User.new(id: 1, name: "Mahi", role: "student")
user2 = User.new(id: 2, name: "Sara", role: "assistant")

# Create resources
resource1 = Resource.new(id: 1, name: "Microscope", category: "lab")
resource2 = Resource.new(id: 2, name: "Projector", category: "equipment")

# Create booking
booking1 = Booking.new(user: user1, resource: resource1)
puts "Booking created: #{booking1.status}"

# Try conflicting booking
begin
  Booking.new(user: user2, resource: resource1)
rescue => e
  puts "Error: #{e.message}"
end

# Cancel booking
booking1.cancel
puts "Booking cancelled"

# Try again after cancellation
booking2 = Booking.new(user: user2, resource: resource1)
puts "New booking created: #{booking2.status}"