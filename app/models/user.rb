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
    with: /^[A-Za-z0-9_-]+$/,
    multiline: true,
    message: "Please format username correctly"
  }

  def fullName
  	first_name+" "+last_name
  end

  def gravatar
    strippedEmail = email.strip
    downcaseEmail = strippedEmail.downcase 
    hash = Digest::MD5.hexdigest(downcaseEmail)
    "http://www.gravatar.com/avatar/#{hash}"
  end

end