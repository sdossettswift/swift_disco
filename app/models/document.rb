class Document < ApplicationRecord
    belongs_to :matter
    has_many :users, through: :matters
    attachment :document, destroy: false, extension: 'pdf'
    CATEGORY = ['Child: Health', 'Child: Education', 'Child: Other', 'Financials: Assets', 'Financials: Income', 'Financials: Liabilities', 'Financials: Expenses', 'Drug Tests', 'Infidelity', 'Criminal', 'Emails', 'Phone Records', 'Text Messages', 'Social Media'].freeze
    MONTH = %w(01 02 03 04 05 06 07 08 09 10 11 12).freeze
    DAY = %w(01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31).freeze
    STATUS = %w(None Requested Provided Reviewed Produced).freeze
end
