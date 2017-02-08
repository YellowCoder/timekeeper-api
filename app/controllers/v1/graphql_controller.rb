class V1::GraphqlController < ApplicationController
  before_action :authentication_check

  def create
    result_hash = V1::Schema.execute(
      params[:query],
      variables: variables,
      context: {
        current_user: current_user
      }
    )
    render json: result_hash
  end

  private

  def variables
    return {} if params[:variables].blank?
    JSON.parse(params[:variables].to_json)
  end

  def current_user
    @current_user ||= User.find_by(uuid: authentication_header)
  end

  def authentication_header
    request.env['HTTP_AUTHENTICATION']
  end

  def authentication_check
    return if params[:operationName] == 'Login' || current_user.present?
    render nothing: true, status: :unauthorized
  end
end
