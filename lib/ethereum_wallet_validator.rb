# frozen_string_literal: true

require 'eth'

class EthereumWalletValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if valid?(value)
    record.errors.add(attribute, :invalid, options.merge(value: value))
  end

  private

  def valid?(value)
    value.present? && Eth::Utils.valid_address?(value)
  end
end
