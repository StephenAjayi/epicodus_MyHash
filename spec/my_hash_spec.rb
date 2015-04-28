require('rspec')
require('my_hash')

describe(MyHash) do
  describe("#myStore") do
    it("stores the key and value into a hash") do
      test_hash = MyHash.new()
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
  describe("myValue?") do
    it("checks to see if s value us included in a group of values") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myValue?("cute")).to(eq(true))
  end
end
  describe("myLength") do
    it("checks the length of both keys and values arrays") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.mylength()).to(eq(1))
  end
end
  describe("myMerge") do
    it("adds another key and value to the end of their respective arrays") do
      test_hash = MyHash.new()
      test_hash.myStore("Kitten", "cute")
      expect(test_hash.myMerge("dog","cute")).to(eq(["dog", "cute"]))
  end
end
end
