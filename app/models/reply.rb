class Reply < ApplicationRecord
    belongs_to :profile, optional: true
    belongs_to :comment, optional: true

end
