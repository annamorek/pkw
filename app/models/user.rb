class User < ActiveRecord::Base
  has_one :district
  ROLES = %i[okregowy centralny admin]
  acts_as_authentic do |config|
    config.validate_login_field = false
    config.validate_email_field = false
    config.validate_password_field = false
    config.crypted_password_field = :crypted_password
    config.require_password_confirmation = true
  end
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end