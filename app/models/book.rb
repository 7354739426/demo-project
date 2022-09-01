class Book < ApplicationRecord
    validates :author_id, :name, presence: true
    belongs_to :author
end
