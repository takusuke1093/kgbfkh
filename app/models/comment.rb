class Comment < ApplicationRecord
    has_many :likes
    has_many :replys
    belongs_to :profile, optional: true
    belongs_to :school, optional: true

   end
