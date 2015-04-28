require('rspec')
require('my_hash')

describe(MyHash) do
  describe("#myStore") do
    it("stores the key and value into a hash") do
      test_hash = MyHash.new()
      #test_hash.myStore("kitten", "cute")
      expect(test_hash.myStore("kitten", "cute")).to(eq(["kitten", "cute"]))
    end
  end
  describe("#myFetch") do
     it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
       test_hash.myStore("kitten", "cute")
       expect(test_hash.myFetch("kitten")).to(eq("cute"))
     end
  end
  describe("#myKey?") do
    it("checks to see if a key is included in a group of tore keys") do
    test_hash = MyHash.new()
    test_hash.myStore("kitten", "cute")
    expect(test_hash.myKey?("kitten")).to(eq(true))
  end
end
end



  #  describe("#has_key?") do
  #    it("")
