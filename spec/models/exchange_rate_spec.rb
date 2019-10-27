# frozen_string_literal: true

RSpec.describe ExchangeRate do
  describe '.create' do
    include CurrencyCode

    before do
      described_class.create(attributes)
    end

    let(:date) { Date.new(2019, 12, 12) }
    let(:value) { 1.2345 }
    let(:exchange_rates_hash) do
      values = Array.new(CurrencyCode::CURRENCY_CODES.count) { value }
      currency_code_fields.zip(values).to_h
    end
    let(:attributes) do
      {
        date: date,
        **exchange_rates_hash
      }
    end

    it 'creates an object' do
      expect(described_class.all)
        .to contain_exactly(have_attributes(attributes))
    end
  end
end
