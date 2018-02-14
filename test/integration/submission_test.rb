require 'test_helper'

class SubmissionTest < ActionDispatch::IntegrationTest
  test "Can submit a form" do
    post "/submit", params: {
      form_id: 'F01',
      data: {
        name: 'Submit',
        colour: 'green'
      }
    }, as: :json
    assert_response :created
    assert true

    submission = Submission.last
    assert submission.data.present?
    assert_equal submission.data[:name], 'Submit'
    assert_equal submission.data[:colour], 'green'
    assert_equal Submission.count, 1
  end
end
