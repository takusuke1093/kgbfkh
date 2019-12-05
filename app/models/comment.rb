class Comment < ApplicationRecord
    has_many :like
    has_many :reply
    belongs_to :profile, optional: true
    belongs_to :school, optional: true

   end
