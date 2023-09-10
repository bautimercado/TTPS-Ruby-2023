# 19. Implementá las funciones necesarias para que, dado un color expresado en notación RGB, se
# pueda obtener su representación en las notaciones entera y hexadecimal. La notación entera
# se define como red + green * 256 + blue * 256 * 256 y la hexadecimal como el resul‑
# tado de expresar en base 16 el valor de cada color y concatenarlos en orden.

def notacion_hexadecimal(rgb)
  rgb.each_with_object('#') do |valor, resultado|
    resultado << format('%02X', valor)      # El 02 sirve para mostrar valores como 0.
  end
end


def notacion_entera(rgb)
  rgb.map.with_index { |valor, i| valor*256.pow(i) }.sum
end


puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])