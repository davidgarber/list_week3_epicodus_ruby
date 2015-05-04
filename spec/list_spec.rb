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

  describe('#id') do
    it('returns the value of id') do
      test_list = List.new('Monday', 'home')
      expect(test_list.id()).to(eq(1))
    end
  end

  describe('.clear') do
    it ('empties out all of the saved lists') do
      test_list = List.new('Monday', 'home')
      expect(List.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the list") do
      test_list = List.new("Monday", "home")
      test_list.save()
      expect(List.all()).to(eq([test_list]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(List.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("returns a name by its id number") do
      test_list = List.new('Monday', 'home')
      test_list.save()
      test_list2 = List.new('Tuesday', 'work')
      test_list2.save()
      expect(List.find(test_list.id())).to(eq(test_list))
    end
  end
end
