class Comment < ApplicationRecord
    has_many :likes
    has_many :replys
    belongs_to :user  
    belongs_to :school

   end

   #TODO ユーザーでいくかprofileで行くか確認