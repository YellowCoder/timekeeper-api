class V1::GraphqlController < ApplicationController
  before_action :authentication_check

  def create
    variables = ensure_hash(params[:variables])

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

  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def current_user
    @current_user ||= User.find_by(jwt_token: authentication_header)
  end

  def authentication_header
    request.env['HTTP_AUTHENTICATION']
  end

  def authentication_check
    return if params[:operationName] == 'Login' || current_user.present?
    render nothing: true, status: :unauthorized
  end
end
