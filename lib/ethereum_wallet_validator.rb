# frozen_string_literal: true

require 'eth'

class EthereumWalletValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if valid?(value)
    record.errors.add(attribute, :ethereum_wallet, options.merge(value: value))
  end

  private

  def valid?(value)
    Eth::Utils.valid_address?(value)
  end
end
