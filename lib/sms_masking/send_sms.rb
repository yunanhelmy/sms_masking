module SmsMasking
  module SendSms
    def send_sms(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:mobile])
      res = self.class.get("/Web2SMS/api/sendSMS.aspx", query: params)
      print_response res
    end
  end
end