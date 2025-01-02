class Service < ApplicationRecord
  belongs_to :user
  has_many :supports, dependent: :destroy

  validates :title, :price, presence: true
end
