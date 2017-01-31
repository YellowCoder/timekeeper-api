class V1::GraphqlController < ApplicationController
  before_action :authentication_check

  def create
    result_hash = V1::Schema.execute(
      params[:query],
      variables: JSON.parse(params[:variables]),
      context: {
        current_user: current_user
      }
    )
    render json: result_hash
  end

  private

  def current_user
    @current_user ||= User.find_by(sso_token: authentication_header)
  end

  def authentication_header
    request.env['HTTP_AUTHENTICATION']
  end

  def authentication_check
    return if current_user.present?
    render nothing: true, status: :unauthorized
  end
end