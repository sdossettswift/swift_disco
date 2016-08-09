User.delete_all
admin = User.create! username: "admin", full_name: "Lita Bot", email: "admin@example.com", password: "12345678", role: "Admin"
attorney = User.create! username: "attorney1", full_name: "Alicia Florick",email: "attorney@example.com", password: "12345678", role: "Attorney"
attorney = User.create! username: "attorney2", full_name: "Ally McBeal",email: "attorney2@example.com", password: "12345678", role: "Attorney"

client1 = User.create! username: "client1",full_name: "June Smith", email: "client2@example.com", password: "12345678", role: "Client"
client2 = User.create! username: "client2",full_name: "January Jones", email: "client@example.com", password: "12345678", role: "Client"
client3 = User.create! username: "client3",full_name: "Gray Kelly", email: "client3@example.com", password: "12345678", role: "Client"
client4 = User.create! username: "client4",full_name: "James Taylor", email: "client4@example.com", password: "12345678", role: "Client"

paralegal = User.create! username: "paralegal1",full_name: "Penny Stone", email: "paralegal@example.com", password: "12345678", role: "Law Office"
paralegal = User.create! username: "paralegal2",full_name: "Rocky Hill", email: "paralegal2@example.com", password: "12345678", role: "Law Office"
