module SmsMasking
  module Account

    # ==== Example
    #      sms.balance
    #
    def balance(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/creditsleft.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    # * +newpass+ : New Password
    #
    # ==== Example
    #      sms.change_password({newpass: "password123"})
    #
    def change_password(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      params[:msg] = params.delete :message
      res = self.class.get(@base_path+"/ChangePassword.aspx", query: params)
      print_response res
    end
  end
end