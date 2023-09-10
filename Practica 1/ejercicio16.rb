# 16. Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como paráme‑
# tro un String y un número n, y que realice una rotación de n lugares de las letras del String
# y retorne el resultado.


def rot(texto, n)
  texto.gsub(/[a-zA-Z]/) do |letra|
    offset = letra =~ /[a-z]/ ? 'a' : 'A'
    (((letra.ord - offset.ord + n) % 26) + offset.ord).chr
  end
end

puts rot("¡Bienvenidos a la cursada de TTPS Opción Ruby!", 13)