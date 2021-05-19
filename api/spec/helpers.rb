module Helpers
    def get_fixtures(item)
        YMAL.load(File.read(Dir.pwd + "spec/fixtures/#{item}.yml"),symbolize_names:true)
    end

    module_function :get_fixtures
end

#Estou colocando em metodo a busca das massas no arquivo yml, o symbolize_names é para usar o titulos (pyload, error,code)