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
  end
end
