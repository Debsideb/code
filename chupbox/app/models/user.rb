class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :language, presence: true

  #has_attached_file :picture,
    #styles: { medium: "300x300>", thumb: "100x100>" }

  #validates_attachment_content_type :picture,
    #content_type: /\Aimage\/.*\z/
end
