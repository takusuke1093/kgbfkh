class School < ApplicationRecord
    has_many :comment
    belongs_to :country
end
