require 'sms_masking/auth'
require 'sms_masking/response'
require 'sms_masking/send_sms'
require 'sms_masking/phone_book'
require 'sms_masking/group'
require 'sms_masking/account'

module SmsMasking
  class Base
    attr_accessor :username
    attr_accessor :password
    attr_accessor :base_path

    include HTTParty
    include SmsMasking::Auth
    include SmsMasking::SendSms
    include SmsMasking::PhoneBook
    include SmsMasking::Group
    include SmsMasking::Response
    include SmsMasking::Account

    base_uri 'http://send.smsmasking.co.id:8080'

    def initialize(params = {})
      @base_path = "/Web2SMS/api"
      params.each do |key, value| 
        instance_variable_set("@#{key}", value)
      end
    end

  end
end
