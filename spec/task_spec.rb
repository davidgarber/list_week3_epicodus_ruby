require("rspec")
require("pg")
require("task")

DB = PG.connect({:dbname => 'to_do_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
  end
end

describe(Task) do

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#description') do
    it('returns the description') do
      test_task = Task.new({description: 'walk the dog'})
      expect(test_task.description()).to(eq('walk the dog'))
    end
  end

end
