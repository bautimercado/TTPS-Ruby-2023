# 17. Escribí un script en Ruby que le pida a quien lo ejecute su nombre, el cual ingresará por en‑
# trada estándar (el teclado), y que lo utilice para saludarl@ imprimiendo en pantalla ¡Hola, <
# nombre>!.


puts "Por favor, ingresá tu nombre:"
nombre = gets.chomp
puts "¡Hola, #{nombre}!"