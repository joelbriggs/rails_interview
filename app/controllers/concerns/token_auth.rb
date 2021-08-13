module TokenAuth
  extend ActiveSupport::Concern

  private

  def self.token
    @token ||= SecureRandom.base64.tr('+/=', 'Qrt')
  end

  public

  API_TOKEN = (ENV['API_TOKEN'] || token).freeze

  included do
    include ActionController::HttpAuthentication::Token::ControllerMethods

    before_action :authenticate
  end

  private

  def authenticate
    authenticate_or_request_with_http_token do |token|
      ActiveSupport::SecurityUtils.secure_compare(
        ::Digest::SHA256.hexdigest(token),
        ::Digest::SHA256.hexdigest(API_TOKEN)
      )
    end
  end
end

