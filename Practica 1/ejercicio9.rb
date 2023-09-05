# 9. Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá las
# siguientes operaciones sobre dicha cadena, implementando métodos que funcionen de la siguiente forma:
# • string_reverso: retorna el string con los caracteres en orden inverso.
# • string_sin_espacio: elimina los espacios en blanco que contenga.
# • string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres convertidos a su correspondiente valor ASCII.
# • string_remplaza_vocal: cambia las vocales por números:
#    – "a" o "A" por "4",
#    – "e" o "E" por "3",
#    – "i" o "I" por "1",
#    – "o" u "O" por "0",
#    – "u" o "U" por "6".

def string_reverso(string)
    string.reverse
end

def string_sin_espacio(string)
    return string.gsub(' ', '')
end

def string_a_arreglo_ascii(string)
    lista = []

    string.each_char do |char|
        lista.push char.ord
    end

    return lista
end

def string_remplaza_vocal(string)
    result = ""

    string.each_char do |char|
        case char
        when 'a' || 'A' then result << "4"
        when 'e' || 'E' then result << "3"
        when 'i' || 'I' then result << "1"
        when 'o' || 'O' then result << "0"
        when 'u' || 'U' then result << "6"
        else result << char
        end
    end

    return result
end

puts string_reverso("Y yo me paré sobre el mar, y vi salir de el un monstruo...")
puts string_sin_espacio("Y yo me paré sobre el mar, y vi salir de el un monstruo...")
puts string_a_arreglo_ascii("Y yo me paré sobre el mar, y vi salir de el un monstruo...")
puts string_remplaza_vocal("Y yo me paré sobre el mar, y vi salir de el un monstruo...")