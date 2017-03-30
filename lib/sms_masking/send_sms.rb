module SmsMasking
  module SendSms
    def send_sms(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:mobile])
      res = self.class.get(@base_path+"/sendSMS.aspx", query: params)
      print_response res
    end
  end
end