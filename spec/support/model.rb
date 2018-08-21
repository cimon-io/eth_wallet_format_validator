# frozen_string_literal: true

require 'active_model'
require 'ethereum_wallet_validator'

class Model
  include ActiveModel::Validations
  include ActiveModel::Model

  attr_accessor :field

  validates :field, ethereum_wallet: true
end
