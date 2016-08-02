User.delete_all

admin = User.create! username: "admin", email: "admin@example.com", password: "12345678", role: "Admin"
client = User.create! username: "client", email: "client@example.com", password: "12345678", role: "Client"
paralegal = User.create! username: "paralegal", email: "paralegal@example.com", password: "12345678", role: "Law Office"
attorney = User.create! username: "attorney", email: "attorney@example.com", password: "12345678", role: "Attorney"
