#hashes são diferentes de array porque eles guardam o valor atraves de uma chave e nao uma posição como o array faz.

david = {nome: "David", idade:26, legal:true}

doido = {nome: "Doido", idade:95, legal:true}

pessoas = [david, doido] #Eu consigo passar essas variaveis dentro de um array e chamar como se fossem hashes

puts pessoas [0][:idade]
puts pessoas [1][:nome]