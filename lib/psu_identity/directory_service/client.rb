# frozen_string_literal: true

require 'oauth2'
require 'ostruct'

# @abstract Client for querying Penn State's directory-service API: https://directory-service.k8s.psu.edu/directory-service-web/resources
module PsuIdentity::DirectoryService
  class Error < StandardError; end

  class NotFound < StandardError; end

  class Client
    attr_reader :base_url

    # @param [String] base_url
    def initialize(base_url: '/directory-service-web/resources')
      @base_url = base_url
    end

    # @param [Hash] args of options to pass to the endpoint
    # @option args [String] :userid of the person
    def userid(userid)
      process_userid_response connection.get("#{base_url}/people/#{userid}")
    end

    private

      def process_userid_response(response)
        raise NotFound if response.status == 404

        raise Error.new(response.body) unless response.success?

        snake_cased_response = JSON.parse(response.body).transform_keys(&:underscore)
        OpenStruct.new(snake_cased_response)
      rescue JSON::ParserError
      end

      def connection
        @connection ||= Faraday.new(url: endpoint, headers: auth_headers) do |conn|
          conn.adapter :net_http
        end
      end

      def auth_headers
        { 'Authorization' => "Bearer #{token}" }
      end

      def token
        oauth_client = OAuth2::Client.new(client_id,
                                          client_secret, site: oauth_endpoint,
                                                         authorize_url: '/oauth/api/authz',
                                                         token_url: '/oauth/api/token')
        oauth_token = oauth_client.client_credentials.get_token
        oauth_token.token
      end

      def client_id
        @client_id ||= ENV.fetch('PSU_ID_OAUTH_CLIENT_ID')
      end

      def client_secret
        @client_secret ||= ENV.fetch('PSU_ID_OAUTH_CLIENT_SECRET')
      end

      def oauth_endpoint
        @oauth_endpoint ||= ENV.fetch('PSU_ID_OAUTH_ENDPOINT', 'https://acceptance-oauth2-server.qa.k8s.psu.edu')
      end

      def endpoint
        @endpoint ||= ENV.fetch('DIRECTORY_SERVICE_ENDPOINT', 'https://acceptance-directory-service.qa.k8s.psu.edu')
      end
  end
end
