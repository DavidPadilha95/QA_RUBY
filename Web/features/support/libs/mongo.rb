require 'mongo'

Mongo::Logger.logger = Logger.new("./mongo.log")

class MongoDB
    def remove_user(email)
end