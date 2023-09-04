# 6. Escribí una función que exprese en palabras la hora que recibe como parámetro, según las siguientes reglas:
# • Si el minuto está entre 0 y 10, debe decir “en punto”,
# • si el minuto está entre 11 y 20, debe decir “y cuarto”,
# • si el minuto está entre 21 y 34, debe decir “y media”,
# • si el minuto está entre 35 y 44, debe decir “menos veinticinco” con la hora siguiente,
# • si el minuto está entre 45 y 55, debe decir “menos cuarto” con la hora siguiente,
# • y si el minuto está entre 56 y 59, debe decir “Casi son las” con la hora siguiente
# Es importante considerar que cuando la hora es 1, la forma correcta de expresarla no es“Son las 1 en punto”, sino “Es la 1 en punto”. Esto debe tenerse en cuenta en cada uno de los casos expresados en el enunciado de este ejercicio.

def tiempo_en_palabras(time)
    case time.min
    when 0..10 then time.hour == 1 ? "Es la 1 en punto." : "Son las #{time.hour} en punto."
    when 11..20 then time.hour == 1 ? "Es la 1 y cuarto." : "Son las #{time.hour} y cuarto."
    when 21..34 then time.hour == 1 ? "Es la 1 y media." : "Son las #{time.hour} y media."
    when 35..44 then time.hour == 0 ? "Es la 1 menos veinticinco." : "Son las #{(time.hour + 1) % 24} menos veinticinco."
    when 45..55 then time.hour == 0 ? "Es la 1 menos cuarto." : "Son las #{(time.hour + 1) % 24} menos cuarto."
    when 56..59 then time.hour == 0 ? "Casi es la 1." : "Casi son las #{(time.hour + 1) % 24}."
    end
end

puts tiempo_en_palabras(Time.new(2023, 10, 21, 10, 1))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 9, 33))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 8, 45))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 6, 58))
puts tiempo_en_palabras(Time.new(2023, 10, 21, 0, 58))