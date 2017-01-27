require 'rails_helper'

Rspec.describe V1::Types::WorksheetType do
  include_context 'graphql'

  let(:query) do
    %|
      query _ {
        worksheets{
          id
          type
          description
          created_at
          updated_at
        }
      }
    |
  end

  context 'Response schema' do
    it { match_response_schema(:worksheet, result[:data][:worksheets], list: true) }
  end
end