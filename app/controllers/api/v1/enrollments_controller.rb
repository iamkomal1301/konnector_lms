class Api::V1::EnrollmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    enrollment = Enrollment.create!(
      student_id: params[:enrollment][:student_id],
      batch_id: params[:enrollment][:batch_id],
      status: :pending
    )

    render json: { id: enrollment.id }, status: :created
  end
end
