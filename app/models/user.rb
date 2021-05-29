class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  def self.full_name
    return unless first_name_changed? || last_name_changed? || email_changed?
    return self.full_name = email if first_name.blank? && last_name.blank?

    self.full_name = "#{first_name&.strip} #{last_name&.strip}".strip
  end
end
