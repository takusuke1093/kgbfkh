class Profile < ApplicationRecord
    has_many :likes
    has_many :comments
end
