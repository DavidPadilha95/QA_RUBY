def soma(n1, n2)
    puts n1+n2
end

def subtração(n1, n2)
    puts n1-n2
end

def multiplica(n1, n2)
    puts n1*n2
end

def divide(n1, n2)
    resultado = (n1.to_f / n2.to_f).round(2) #converti para tipo float(to_f) e arrondendei para duas casas decimais (round(2))
    puts resultado
end

#operadores de comparação

def maior_que(v1, v2)
    puts v1 > v2
end

def menor_que(v1, v2)
    puts v1 < v2
end

def maior_ou_igual_que(v1, v2)
    puts v1>=v2
end

def menor_ou_igual_que(v1, v2)
    puts v1<=v2
end

def igual (v1,v2)
    puts v1 == v2
end

def diferente(v1, v2)
    puts  v1 != v2
end



