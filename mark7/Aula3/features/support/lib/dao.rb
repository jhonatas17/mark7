require 'mongo'

# DAO é classe helper para operações no banco de dados (mongo)
class DAO
    attr_accessor :client
    
    Mongo::Logger.logger = Logger.new('C:\Users\jhonatas.santos\mark7\log\mongo.log')

    def initialize
        str_conn = 'mongodb://aluno:qaninja@ds225078.mlab.com:25078/heroku_4m3km28x'
        @client = Mongo::Client.new(str_conn)
    end    

    def remover_usuario(email)
        users = @client[:users]
        users.delete_one('profile:email' => email)
    end    
end    
