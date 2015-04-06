class User < ActiveRecord::Base
	include Gravtastic
	gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	has_many :posts, dependent: :destroy
	has_many :photos, dependent: :destroy
	has_many :qualifications
	accepts_nested_attributes_for :photos, :allow_destroy => true
	has_attached_file :photo
	before_save { self.email = email.downcase }
  	validates :name, presence: true, length: { maximum: 50 }
  	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  	has_secure_password






	
end
