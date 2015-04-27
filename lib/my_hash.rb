class MyHash
  define_method(:initialize) do
    my_hash = self
    @my_hash = {}
  end

  define_method(:myStore) do |key, value|
    new_hash = {key => value}
    @my_hash.merge!(new_hash)
  end

  define_method(:myFetch) do |input|
    if input.== (@key)
    end
  end
end
