class Event < ApplicationRecord
    belongs_to :matter

    MONTH = %w(01 02 03 04 05 06 07 08 09 10 11 12).freeze
    DAY = %w(01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31).freeze
    HOUR = %w(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24).freeze
    MINUTE = %w(00 05 10 15 20 25 30 35 40 45 50 55).freeze
    validates :year, presence: true
    validates :matter_id, presence: true
end
