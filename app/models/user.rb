class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  enum role: [:employee,:admin]

  after_create :first_user

  has_many :query_solveds



  def first_user
  	if self ==User.first
  		self.role = "admin"
  	end
  end


  def query_solved_count
    self.query_solveds.count
  end
end
