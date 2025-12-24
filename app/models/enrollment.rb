class Enrollment < ApplicationRecord
  enum status: { pending: 0, approved: 1, rejected: 2 }

  belongs_to :student, class_name: "User"
  belongs_to :batch
end
