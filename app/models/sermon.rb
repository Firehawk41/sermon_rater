class Sermon < ApplicationRecord
  belongs_to :speaker
  has_many :responses, dependent: :destroy

  before_create :generate_token
  def generate_token
    self.token ||= SecureRandom.urlsafe_base64(6)
  end
end
