class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  has_many :statuses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, format: {
  								with: /^[A-Za-z1-9]/,
  								message : "Please correct Username format"
  								} 

  def fullName
  	first_name+" "+last_name
  end

end