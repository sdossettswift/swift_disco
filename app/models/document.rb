class Document < ApplicationRecord
  belongs_to :matter
  has_attachment :document
end
