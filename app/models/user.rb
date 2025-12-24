class User < ApplicationRecord
  enum role: { admin: 0, school_admin: 1, student: 2 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :enrollments, foreign_key: :student_id
end
