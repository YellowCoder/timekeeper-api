RSpec.shared_context 'graphql' do
  let(:user) { create(:user) }
  let(:context) {{ current_user: user }}
  let(:result) do
    res = V1::Schema.execute(
      query,
      context: context
    )
    res.with_indifferent_access
    res = res.with_indifferent_access
    if res[:errors].present?
      p res[:errors]
    end
    res
  end
end