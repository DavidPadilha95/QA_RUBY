require "httparty"

class BaseApi
    include HTTParty
    base_uri "..."
end