# 14. Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
# opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") que sea
# el que utilice para unir los pares de clave/valor.

def listar_mejorada(hash, pegamento=" -> ")
  string = ""
  elemento = 1
  hash.each_pair do |clave, valor|
    string += "#{elemento}. #{clave}#{pegamento}#{valor}.\n"
    elemento += 1
  end
  return string
end

puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")