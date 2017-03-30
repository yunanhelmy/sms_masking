module SmsMasking
  module SendSms

    # ==== Attributes
    # * +mobile+ : recipient
    # * +message+ : SMS
    #
    # ==== Example
    #      sms.send_sms({mobile: "085642568786", message: "your message"})
    #
    def send_sms(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s+params[:mobile])
      res = self.class.get(@base_path+"/sendSMS.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    # * +group+ : Group Name
    # * +message+ : SMS
    #
    # ==== Example
    #      sms.send_sms_group({group: "My Group", message: "your message"})
    #
    def send_sms_group(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      params[:msg] = params.delete :message
      res = self.class.get(@base_path+"/SendSMSGroup.aspx", query: params)
      print_response res
    end
  end
end