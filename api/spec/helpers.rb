module Helpers
    def get_fixtures(item)
        YMAL.load(File.read(Dir.pwd + "spec/fixtures/#{item}.yml"),symbolize_names:true)
    end

    def get_thumb(file_name)
     return File.open(File.join(Dir.pwd, "spec/fixtures/images", file_name), "rb")#esse rb é para salvar a foto
    end

    module_function :get_fixtures
    module_function :get_thumb
end



#Estou colocando em metodo a busca das massas no arquivo yml, o symbolize_names é para usar o titulos (pyload, error,code)