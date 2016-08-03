class Document < ApplicationRecord
  # extend Refile::Attachment
  belongs_to :matter
  attachment :document, destroy: false
  # attr_accessor :document_id
  CATEGORY = ['Child: Health', 'Child: Education', 'Child: Other', 'Financials: Assets', 'Financials: Income', 'Financials: Liabilities', 'Financials: Expenses', 'Drug Tests', 'Infidelity', 'Criminal', 'Emails', 'Phone Records', 'Text Messages', 'Social Media']
  MONTH = ['01','02','03','04','05','06','07','08','09','10','11','12']
  DAY = ['01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31']
end
