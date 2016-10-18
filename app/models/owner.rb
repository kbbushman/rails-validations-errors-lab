class Owner < ActiveRecord::Base
  
  validates :first_name, :last_name, :email, presence: true, length: { maximum: 255 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: true }, format: { with: VALID_EMAIL_REGEX }

  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # stretch
  end

end
