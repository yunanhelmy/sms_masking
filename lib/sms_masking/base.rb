require 'sms_masking/auth'
require 'sms_masking/response'
require 'sms_masking/send_sms'

module SmsMasking
  class Base
    attr_accessor :username
    attr_accessor :password

    include HTTParty
    include SmsMasking::Auth
    include SmsMasking::SendSms
    include SmsMasking::Response

    base_uri 'http://send.smsmasking.co.id:8080'

    def initialize(params = {})
      params.each do |key, value| 
        instance_variable_set("@#{key}", value)
      end
    end

  end
end
