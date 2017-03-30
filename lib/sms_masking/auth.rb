module SmsMasking
  module Auth
    def auth(data)
      Digest::MD5.hexdigest(data)
    end
  end
end