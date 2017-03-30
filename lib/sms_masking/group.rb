module SmsMasking
  module Group

    # ==== Attributes
    # * +group+ : Group Name
    #
    # ==== Example
    #      sms.add_group({group: "Group 1"})
    #
    def add_group(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:group].to_s+@password.to_s)
      res = self.class.get(@base_path+"/groupAdd.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    # * +id+ : Group ID
    # * +group+ : Group Name
    #
    # ==== Example
    #      sms.edit_group({id: 1, group: "My Group 1"})
    #
    def edit_group(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:id].to_s+@password.to_s)
      res = self.class.get(@base_path+"/groupEdit.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    # * +id+ : Group ID
    #
    # ==== Example
    #      sms.delete_group({id: 1})
    #
    def delete_group(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:id].to_s+@password.to_s)
      res = self.class.get(@base_path+"/groupDelete.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +page+ : Page Number (default=1)
    # * +size+ : number of records per page (default=10)
    #
    # ==== Example
    #
    #      sms.list_group({
    #        page: 1, 
    #        size: 10
    #      })
    #
    def list_group(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_getList.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +name+ : Name to search
    #
    # ==== Example
    #
    #      sms.find_group({name: "My Group 1"})
    #
    def find_group(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/groupFind.aspx", query: params)
      print_response res
    end

  end
end