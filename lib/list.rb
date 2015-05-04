class List

  @@lists = []

  define_method(:initialize) do |name, type|
    @name = name
    @type = type
    @id = @@lists.length().+(1)
  end

  define_method(:name) do
    @name
end

  define_method(:type) do
    @type
  end

  define_singleton_method(:clear) do
    @@lists = []
  end

  define_singleton_method(:all) do
    @@lists
  end

  define_method(:id) do
    @id
  end

end
