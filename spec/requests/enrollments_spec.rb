require 'rails_helper'

RSpec.describe "Enrollments", type: :request do
  let(:student) { create(:user, :student) }

  it "creates pending enrollment when student requests" do
    batch = create(:batch)

    post api_v1_enrollments_path, params: {
      enrollment: { 
        student_id: student.id,
        batch_id: batch.id
      }
    }

    expect(response).to have_http_status(:created)
    expect(Enrollment.last.pending?).to be true
  end
end

