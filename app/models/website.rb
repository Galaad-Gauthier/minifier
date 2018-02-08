class Website < ApplicationRecord

  has_many :visitors

  before_save :set_token

  validates_uniqueness_of :url

  private

  def set_token
    self.token = SecureRandom.urlsafe_base64(16)
  end

end
