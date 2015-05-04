require('rspec')
require('list')

describe(List) do
  before() do
    List.clear()
  end

  describe("#name") do
    it("let's you give the list a name") do
      test_list = List.new("Monday","home")
      expect(test_list.name()).to(eq("Monday"))
    end
  end
end
