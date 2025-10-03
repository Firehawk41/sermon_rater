class Response < ApplicationRecord
  belongs_to :sermon
  belongs_to :question

  validates :value, inclusion: { in: 1..5 }
end
