class Account < ApplicationRecord
    validates :supplier_id, :account_number, presence: true
end
