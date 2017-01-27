RSpec.shared_context 'graphql' do
  let(:user) { create(:user) }
  let(:context) {{ current_user: user }}
  let(:result) do
    res = V1::Schema.execute(
      query,
      context: context
    )
    res.with_indifferent_access
  end
end