# frozen_string_literal: true

class UserRole < ApplicationRecord
  ALLOWED_ROLES = %w[client professional].freeze
  belongs_to :user
  validates :role, inclusion: { in: ALLOWED_ROLES }
end
