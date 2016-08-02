class Document < ApplicationRecord
  extend Refile::Attachment
  belongs_to :matter
  attachment :document, destroy: false
  attr_accessor :document_id
end
