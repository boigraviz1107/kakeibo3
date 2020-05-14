class Spending < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true
  validates :year_month, presence: true
  validates :value, presence: true
end
