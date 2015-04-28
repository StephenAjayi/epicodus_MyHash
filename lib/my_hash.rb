class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
  end

  define_method(:myStore) do |key, value|
    @keys.push(key)
    @values.push(value)
    new_hash = [key,value]
    new_hash
  end

  define_method(:myFetch) do |key|
   value_position = @keys.index(key)
   @values[value_position]
  end
  define_method(:myKey?) do |key|
    @keys.include?(key)
  end
  define_method (:myValue?) do |value|
    @values.include?(value)
  end
  define_method(:mylength) do
    @keys.size().==(@values.size())
    @keys.size()
  end
end
