class Suggestion < ApplicationRecord
    validates :activity, presence: true, length: { maximum: 200, minimum: 3 }
    validates :description, presence: true, length: { maximum: 200, minimum: 3 }
end
