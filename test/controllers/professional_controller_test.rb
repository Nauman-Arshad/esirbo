# frozen_string_literal: true

require 'test_helper'

class ProfessionalControllerTest < ActionDispatch::IntegrationTest
  test 'should get dashboard' do
    get professional_dashboard_url
    assert_response :success
  end
end
