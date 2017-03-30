module SmsMasking
  module Response
    def print_response(res)
      {
        http_response: res,
        sms_masking_response: {
          return_code: res.body[0..3],
          description: description(res.body[0..3])
        }
      }
    end

    def description(code)
      returns = {
        "1701": "Success",
        "1702": "Invalid Username or Password",
        "1703": "Internal Server Error",
        "1704": "Data not found",
        "1705": "Process Failed",
        "1706": "Invalid Phone Number",
        "1707": "Invalid Message",
        "1708": "Insufficient Credit",
        "1709": "Group Empty",
        "1711": "Invalid Group Name",
        "1712": "Invalid Group ID",
        "1721": "Invalid Phonebook Name",
        "1722": "Invalid Phonebook ID",
        "1731": "User Name already exist",
        "1732": "Sender ID not valid",
        "1733": "Internal Error – please contact administrator",
        "1734": "Invalid client user name",
        "1735": "Invalid Credit Value",
        "Unab": "Unable to process your request ..."
      }

      returns[code.to_s.to_sym]
    end
  end
end