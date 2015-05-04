require('rspec')
require('list')

describe(List) do
  before() do
    List.clear()
  end

  describe("#name") do
    it("lets you give the list a name") do
      test_list = List.new("Monday","home")
      expect(test_list.name()).to(eq("Monday"))
    end
  end

  describe("#type") do
    it("let you define the list type") do
      test_list = List.new("Monday", "home")
      expect(test_list.type()).to(eq("home"))
    end
  end
end
