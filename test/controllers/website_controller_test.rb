# frozen_string_literal: true

require 'test_helper'

class WebsiteControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get website_home_url
    assert_response :success
  end

  test 'should get service' do
    get website_service_url
    assert_response :success
  end

  test 'should get portfolio' do
    get website_portfolio_url
    assert_response :success
  end

  test 'should get contact' do
    get website_contact_url
    assert_response :success
  end

  test 'should get about' do
    get website_about_url
    assert_response :success
  end

  test 'should get blog' do
    get website_blog_url
    assert_response :success
  end
end
