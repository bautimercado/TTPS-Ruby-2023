### 2. ¿De qué forma(s) se puede convertir un objeto (cualquiera fuere su tipo o clase) en String?

```ruby
# to_s method
nro = 67
nro.to_s

# interpolation
object = SomeClass.new
string = "This is a String with a #{object}"

# inspect method
array = [1, 2, 3]
array.inspect
```