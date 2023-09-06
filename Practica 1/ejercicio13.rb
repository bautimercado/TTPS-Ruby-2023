# 13. Escribí una función llamada listar que reciba un Hash y retorne un String con los pares de
# clave/valor formateados en una lista ordenada en texto plano.

def listar(hash)
  string = ""
  elemento = 1
  hash.each_pair do |clave, valor|
    string += "#{elemento}. #{clave}: #{valor}.\n"
    elemento += 1
  end
  return string
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })