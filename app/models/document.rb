class Document < ApplicationRecord
    belongs_to :matter
    has_many :users, through: :matters
    attachment :document, destroy: false, extension: 'pdf'
    CATEGORY = ['Child: Health', 'Child: Education', 'Child: Other', 'Financials: Assets', 'Financials: Income', 'Financials: Liabilities', 'Financials: Expenses', 'Drug Tests', 'Infidelity', 'Criminal', 'Emails', 'Phone Records', 'Text Messages', 'Social Media'].freeze
    STATUS = %w(None Requested Provided Reviewed Produced).freeze
end
