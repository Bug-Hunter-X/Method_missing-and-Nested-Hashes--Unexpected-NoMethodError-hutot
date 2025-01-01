```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s.start_with?('get_')
      attribute = method_name.to_s.sub('get_', '').to_sym
      return @value[attribute] if @value.respond_to?(:[]) && @value.key?(attribute)
      return instance_variable_get('@' + attribute.to_s) if instance_variable_defined?('@' + attribute.to_s)
    end
    super
  end
end

my_object = MyClass.new({ name: 'John', age: 30 })
puts my_object.get_name #=> John
puts my_object.get_age  #=> 30
puts my_object.get_city #=> NoMethodError (undefined method `[]' for nil:NilClass)
```