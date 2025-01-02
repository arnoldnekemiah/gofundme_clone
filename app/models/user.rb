class User < ApplicationRecord
    has_many :services, dependent: :destroy
    has_many :supports, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
