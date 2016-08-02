class Document < ApplicationRecord
  belongs_to :matter
  attachment :document, destroy: false
end
