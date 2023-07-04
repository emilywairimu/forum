# db/seeds.rb

# Create channels
Channel.create(channel_name: "General")
Channel.create(channel_name: "Announcements")
Channel.create(channel_name: "Random")

# Create users
User.create(username: "JohnDoe", email: "johndoe@example.com", admin_privilege: true, password: "password")
User.create(username: "JaneSmith", email: "janesmith@example.com", admin_privilege: false, password: "password")

# Create profiles
Profile.create(user_id: 1, email: "johndoe@example.com", image: "john.jpg")
Profile.create(user_id: 2, email: "janesmith@example.com", image: "jane.jpg")
