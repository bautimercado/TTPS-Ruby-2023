# 7. Escribí una función llamada contar que reciba como parámetro dos String y que retorne la cantidad de veces 
# que aparece el segundo String en el primero, en una búsqueda case insensitive.


#def contar(string, substring)
    #return string.downcase.count(substring.downcase)
#end

def contar(string, substring)
    string.scan(/#{Regexp.escape(substring)}/i).length
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")