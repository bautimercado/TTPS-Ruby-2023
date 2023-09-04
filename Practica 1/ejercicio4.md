### 4. ¿Qué devuelve la siguiente comparación? ¿Por qué?
```ruby
'TTPS Ruby'.object_id == 'TTPS Ruby'.object_id
```
- La comparación devuelve _False_.
- En Ruby todo es un objeto. Las variables en sí, son punteros a zonas de memoria donde se almacena el objeto al que referencian.
- En este caso, se reservan dos espacios de memoria diferente para ambos Strings, por esta razón los punteros de ambos objetos son diferentes y la comparación da _False_.