# Clear existing data
User.destroy_all
Service.destroy_all
Support.destroy_all

# Create Users
users = User.create!([
  { name: 'Alice Johnson', email: 'alice@example.com', bio: 'Coffee enthusiast and tech blogger.' },
  { name: 'Bob Smith', email: 'bob@example.com', bio: 'Freelance graphic designer.' }
])

# Create Services
services = Service.create!([
  { user: users[0], title: 'Buy Me a Coffee', description: 'Support my blog with a coffee!', price: 5.00 },
  { user: users[1], title: 'Graphic Design Tips', description: 'Contribute to my design tutorials!', price: 10.00 }
])

# Create Supports
supports = Support.create!([
  { user: users[1], service: services[0], amount: 5.00, status: 'completed', payment_reference: 'REF12345' },
  { user: users[0], service: services[1], amount: 10.00, status: 'completed', payment_reference: 'REF67890' }
])

puts "Seed data created: #{User.count} users, #{Service.count} services, #{Support.count} supports."
