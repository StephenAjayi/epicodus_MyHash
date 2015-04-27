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
    #@my_hash.merge!(new_hash)
  end
end  

  #define_method(:myFetch) do |input|
  #  if input.== (@key)
  #  end
  #end
#end
