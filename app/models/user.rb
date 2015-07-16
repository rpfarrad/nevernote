class User < ActiveRecord::Base
  has_secure_password
  has_many :notes
  validates :password, length: { minimum: 8 }
  validate :passwords_match

  private

  def passwords_match
    if password.present? && password != password_confirmation
      errors.add :password_confirmation, 'must match the password'
    end
  end
end
