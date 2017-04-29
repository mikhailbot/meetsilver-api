module Tokenable
  extend ActiveSupport::Concern

private
  def generate_token(column, bytes = 42)
    loop do
      self[column] = SecureRandom.urlsafe_base64(bytes)
      break if !self.class.exists?(column => self[column])
    end
  end
end
