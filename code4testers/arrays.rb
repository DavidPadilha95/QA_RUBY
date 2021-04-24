# Estruturas capazesde armazenar dados em sequencias

bandas = ["AC/DC", "Black Sabbath", "Queen", "Os travessos"]

puts bandas[0] #posição 1
puts bandas[1] #posição 2
puts bandas[2] #posição 3
puts bandas[3] #posição 4
puts bandas[4] #posição 5

#Add no array
bandas.push("Bon Jovi")
puts bandas[4] #posição 5 / aqui nao tinha nada, mas usando o push consigo colocar um valor no array

#Removendo do array
bandas.delete("Queen")
puts bandas

#Buscando dentro do array
pagode = bandas.find{ |item| item == ("Os travessos")} #Esse metodo ele vai buscar no array algo identico ao "os travessos" e colocar na variavel pagode
puts pagode

pagode = bandas.find{ |item| item.include?("travessos")} #Esse metodo ele vai buscar no array algo que contenha "travessos" e colocar na variavel pagode
puts pagode