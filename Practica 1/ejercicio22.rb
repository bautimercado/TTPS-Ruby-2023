# 22. Creá otra función, similar a la anterior, que busque los números naturales múltiplos de N núme‑
# ros enteros que recibirá como parámetro en un arreglo.

def multiplos_de(numeros_multiplos, tope)
  resultado = 0

  (1..tope).each do |numero|
    if numeros_multiplos.all? { |n| numero % n == 0 }
      resultado += numero
    end
  end

  return resultado
end

puts multiplos_de([3, 5], 100)
puts multiplos_de([3, 5, 17, 28, 65], 100_000)