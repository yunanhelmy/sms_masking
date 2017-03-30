module SmsMasking
  module PhoneBook
    
    # ==== Attributes
    #
    # * +name+ : Contact Name
    # * +mobile+ : Recipient
    # * +group+ : Contact Group Name
    # * +address+ (optional) : Contact Address
    # * +birth+ (optional) : Contact Birthday (YYYYMMDD)
    # * +desc+ (optional) : Contact Description
    #
    # ==== Example
    #
    #      sms.add_phone_book({
    #        name: "John Doe", 
    #        mobile: "085699999999", 
    #        group: "My Group", 
    #        address: "My Address",
    #        birth: "19900101",
    #        desc: "My Description"
    #      })
    #
    def add_phone_book(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:mobile]+@password.to_s)
      res = self.class.get(@base_path+"/phbkAdd.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +id+ : Contact ID Number
    # * +name+ : Contact Name
    # * +mobile+ : Recipient
    # * +group+ : Contact Group Name
    # * +address+ (optional) : Contact Address
    # * +birth+ (optional) : Contact Birthday (YYYYMMDD)
    # * +desc+ (optional) : Contact Description
    #
    # ==== Example
    #
    # sms.edit_phone_book({
    #   id: 1,
    #   name: "John Doe", 
    #   mobile: "085699999999", 
    #   group: "My Group", 
    #   address: "My Address",
    #   birth: "19900101",
    #   desc: "My Description"
    # })
    #
    def edit_phone_book(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:id].to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbkEdit.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +id+ : Contact ID Number
    #
    # ==== Example
    #
    # sms.delete_phone_book({id: 1})
    #
    def delete_phone_book(params = {})
      params[:username] = @username
      params[:auth] = auth(params[:id].to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbkDelete.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +page+ : Page Number (default=1)
    # * +size+ : number of records per page (default=10)
    #
    # ==== Example
    #
    # sms.list_phone_book({
    #   page: 1, 
    #   size: 10
    # })
    #
    def list_phone_book(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_getList.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +page+ : Page Number (default=1)
    # * +size+ : number of records per page (default=10)
    # * +group+ : Group Name
    #
    # ==== Example
    #
    # sms.list_phone_book_by_group({
    #   page: 1, 
    #   size: 10,
    #   group: "My Group"
    # })
    #
    def list_phone_book_by_group(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_getListbyGroup.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +id+ : Contact ID Number
    #
    # ==== Example
    #
    # sms.contact_detail({id: 1})
    #
    def contact_detail(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_getCompleteData.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +name+ : Name to search
    #
    # ==== Example
    #
    # sms.find_contact({name: "John Doe"})
    #
    def find_contact(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_findName.aspx", query: params)
      print_response res
    end

    # ==== Attributes
    #
    # * +number+ : Number to search
    #
    # ==== Example
    #
    # sms.find_number({number: "085699999999"})
    #
    def find_number(params = {})
      params[:username] = @username
      params[:auth] = auth(@username.to_s+@password.to_s)
      res = self.class.get(@base_path+"/phbk_findPhNumber.aspx", query: params)
      print_response res
    end
    

    


  end
end