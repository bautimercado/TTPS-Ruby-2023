### 10. ¿Cuál es el valor de retorno del siguiente código?
```ruby
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  "TTPS Ruby".send(meth)
end
```
- El valor de retorno del código es:
    ```ruby
    ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]
```