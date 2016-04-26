class User <ActiveRecord::Base
	has_many :articles, dependent: :destroy
	before_save{self.email = email.downcase}
	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-_]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 204}, uniqueness: {case_sensitive: false},
			  format: {with: VALID_EMAIL_REGEX}
	has_secure_password
	
end