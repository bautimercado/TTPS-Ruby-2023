# 21. Escribí una función que encuentre la suma de todos los números naturales múltiplos de 3 y 5
# (ambos) que sean menores que un número tope que reciba como parámetro.

def multiplos_de_3_y_5(tope)
  resultado = 0

  (1..tope).each do |numero|
    if numero % 3 == 0 && numero % 5 == 0
      resultado += numero
    end
  end

  return resultado
end

puts multiplos_de_3_y_5(100)