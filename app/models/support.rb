class Support < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :amount, :status, presence: true
end
