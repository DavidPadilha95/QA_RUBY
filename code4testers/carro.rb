
#nome,marca,modelo,cor
#ligar,businar,para

#Uma classe é um objeto que tem caracteristicas e funções

#metodos construtores sao executadas toda vez que a classe é instanciada

class Veiculo
    attr_accessor :nome, :cor, :marca #São caracteristicas iniciais da classe

    def initizalize(nome, marca) #metodo construtor OBRIGATORIO PASSAR ANTES DE INSTACIAR A CLASSE
        @nome = nome
        @marca = marca
    end

    def define_cor(cor)
        @cor = cor
    end

end

class Carro < Veiculo #estou herdando propriedades da classe veiculo

    def ligar
        puts "O #{@nome} está pronto para iniciar o trajeto"
    end

    def dirigir
        puts "O #{@nome} está iniciando o trajeto"
    end

end

class Moto < Veiculo #estou herdando propriedades da classe veiculo

    def ligar
        puts "A #{@nome} está pronto para iniciar o trajeto"
    end

    def pilotar
        puts "A #{@nome} está iniciando o trajeto"
    end

end

chevette = Carro.new("Chevette", "GM")
chevette.ligar
chevette.dirigir

cg = Moto.new("CG", "Honda")
cg.ligar
cg.pilotar