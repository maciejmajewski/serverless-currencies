# frozen_string_literal: true

FactoryBot.define do
  factory :exchange_rate do
    date { Date.today }

    CurrencyCode.currency_code_fields.each do |currency_code|
      send(currency_code) { 3.1415 }
    end
  end
end
