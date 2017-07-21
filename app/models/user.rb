class User < ApplicationRecord
  has_many :microposts, dependent: :destroy

  validates :name, presence: true, length: {minimum: 4, maximum: 20}
  validates :email, presence: true, length: {minimum: 4, maximum: 20}
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
