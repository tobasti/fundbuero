class Subscriber < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
