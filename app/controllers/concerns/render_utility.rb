module RenderUtility
  def render_response(response, status)
    render json: {
      data: response,
      meta:
      {
        http_status: status
      }
    },
    status: status
  end

  def render_error(error)
    render json: {
      errors: [error_response(error)],
      meta: {
        http_status: error.http_code
      }
    },
    status: error.http_code
  end

  def error_response(error)
    {
      message: error.message,
      code: error.error_code
    }
  end
end
