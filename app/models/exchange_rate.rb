# frozen_string_literal: true

class ExchangeRate
  include Dynamoid::Document
  extend CurrencyCode

  table name: ENV['DYNAMODB_TABLE_CURRENCIES'], key: :id
  range :date, :date

  currency_code_fields.each do |currency_code_field|
    field currency_code_field, :number
  end
end
