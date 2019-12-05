class Profile < ApplicationRecord
    has_many :like
    has_many :comment
    has_many :reply
end
