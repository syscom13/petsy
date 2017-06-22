class User < ApplicationRecord

  has_secure_password
  validates :username,
            format: {with: /\A[a-zA-Z0-9_]{2,20}\z/, message: "ne doit contenir que des caractères alphanumériques ou des _"},
            uniqueness: {case_sensitive: false}
  validates :email,
            format: {with: /\A[ˆ@\s]+@([ˆ@.\s]+\.)+[ˆ@.\s]+\z/},
            uniqueness: {case_sensitive: false}

end
