
User.delete_all
admin = User.create! username: 'admin', full_name: 'Lita Bot', email: 'admin@example.com', password: '12345678', role: 'Admin'
attorney = User.create! username: 'attorney1', full_name: 'Alicia Florick', email: 'attorney@example.com', password: '12345678', role: 'Attorney'
attorney = User.create! username: 'attorney2', full_name: 'Ally McBeal', email: 'attorney2@example.com', password: '12345678', role: 'Attorney'

client1 = User.create! username: 'client1', full_name: 'June Smith', email: 'client2@example.com', password: '12345678', role: 'Client'
client2 = User.create! username: 'client2', full_name: 'January Jones', email: 'client@example.com', password: '12345678', role: 'Client'
client3 = User.create! username: 'client3', full_name: 'Gray Kelly', email: 'client3@example.com', password: '12345678', role: 'Client'
client4 = User.create! username: 'client4', full_name: 'James Taylor', email: 'client4@example.com', password: '12345678', role: 'Client'

paralegal = User.create! username: 'paralegal1', full_name: 'Penny Stone', email: 'paralegal@example.com', password: '12345678', role: 'Law Office'
paralegal = User.create! username: 'paralegal2', full_name: 'Rocky Hill', email: 'paralegal2@example.com', password: '12345678', role: 'Law Office'

client3 = User.create! username: 'client3', full_name: 'Client: June Smith', email: 'client3@example.com', password: '12345678', role: 'Client'
client4 = User.create! username: 'client4', full_name: 'Client: January Jones', email: 'client4@example.com', password: '12345678', role: 'Client'
client5 = User.create! username: 'client5', full_name: 'Client: Swift Taylor', email: 'client5@example.com', password: '12345678', role: 'Client'

Document.delete_all

document1 = Document.create! matter_id: 1, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 1, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 1, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 1, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 1, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 2, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 2, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 2, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 2, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 2, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 3, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 3, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 3, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 3, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 3, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 4, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 4, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 4, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 4, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 4, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 5, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 5, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 5, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 5, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 5, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 6, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 6, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 6, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 6, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 6, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 7, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 7, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 7, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 7, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 7, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
document1 = Document.create! matter_id: 8, year: '2016', month: '06', day: '', category: 'Phone Records', description: 'June Phone Log', hot_doc: true, issues: '', status: '1', title: 'June Phone Records'
document2 = Document.create! matter_id: 8, year: '2016', month: '06', day: '', category: 'Financials: Assets', description: 'June Bank Statement', hot_doc: false, issues: '', status: '1', title: 'June Bank Statement'
document3 = Document.create! matter_id: 8, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - MasterCard ', hot_doc: false, issues: '', status: '1', title: 'June Credit Card'
document4 = Document.create! matter_id: 8, year: '2016', month: '06', day: '', category: 'Financials: Expenses', description: 'June Credit Card - American Express ', hot_doc: true, issues: '', status: '1', title: 'June Credit Card'
document5 = Document.create! matter_id: 8, year: '2016', month: '06', day: '', category: 'Child: Health', description: 'June Medical Bills', hot_doc: true, issues: '', status: '1', title: "Johnny's Hospitalization"
