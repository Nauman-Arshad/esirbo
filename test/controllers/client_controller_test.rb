# frozen_string_literal: true

require 'test_helper'

class ClientControllerTest < ActionDispatch::IntegrationTest
  test 'should get dashboard' do
    get client_dashboard_url
    assert_response :success
  end
end
