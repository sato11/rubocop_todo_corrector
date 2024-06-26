# frozen_string_literal: true

RSpec.describe RubocopTodoCorrector::GemNamesDetector do
  describe '.call' do
    subject do
      described_class.call(
        rubocop_configuration_path: 'spec/fixtures/dummy_rubocop.yml'
      )
    end

    it 'returns gem names' do
      is_expected.to eq(
        %w[
          rubocop-rake
          rubocop-rspec
          rubocop-rails-omakase
        ]
      )
    end
  end
end
