puts "Qual o seu nome?"
nome = gets.chomp #o gets permite que voce digite uma informação no prompt e o chomp remove a linha que é gerada no console pelo gets
puts "Qual sua idade?"
idade = gets.chomp.to_i #Converte para inteiro

if(idade >= 18)
    puts "#{nome} você pode tirar habilitação"
elsif (idade >= 7)
    puts "#{nome} melhor andar de bicleta"
else
    puts "#{nome} você é muito jovem"
end