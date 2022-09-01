class Supplier < ApplicationRecord
    has_one :Account, dependent: :destroy
end
