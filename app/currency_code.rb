# frozen_string_literal: true

module CurrencyCode
  CURRENCY_CODES = %w[THB USD AUD HKD CAD NZD SGD EUR HUF CHF GBP UAH JPY CZK
                      DKK ISK NOK SEK HRK RON BGN TRY ILS CLP PHP MXN ZAR BRL
                      MYR RUB IDR INR KRW CNY XDR].freeze

  def currency_code_fields
    Enumerator.new do |y|
      CURRENCY_CODES.each do |currency_code|
        y << currency_code_to_field(currency_code)
      end
    end
  end

  def currency_code_to_field(currency_code)
    currency_code.to_s.downcase.to_sym
  end

  module_function :currency_code_fields, :currency_code_to_field
end
