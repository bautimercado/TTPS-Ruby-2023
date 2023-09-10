# 15. Escribí una función llamada rot13 que encripte un String recibido como parámetro utilizando
# el algoritmo ROT13.


# Determina si la letra es mayuscula o minuscula, en función de eso, offset empieza por las minusculas o mayusculas
# =~ sirve para comprobar si una expresión regular coincide con un string.
# Se opera según el valor ASCII de los caracteres
# letra.ord - offset => Sirve para normalizar el caracter en función del punto de partida.
# Se le suma 13 por el cifrado ROT13
# Se calcula el módulo 26 para que no se salga del rango de las letras.
# Se vuelve a sumar el offset para devolver la letra
def rot13(texto)
  texto.gsub(/[a-zA-Z]/) do |letra|
    offset = letra =~ /[a-z]/ ? 'a' : 'A'
    (((letra.ord - offset.ord + 13) % 26) + offset.ord).chr
  end
end

puts rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")