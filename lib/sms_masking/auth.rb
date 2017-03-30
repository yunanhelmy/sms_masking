module SmsMasking
  module Auth
    def auth(recipient)
      Digest::MD5.hexdigest(@username.to_s+@password.to_s+recipient.to_s)
    end
  end
end