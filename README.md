# FailfastValidation
Failfast mode for ActiveModel::EachValidator

## Usage
```rb
class YourModel
  include ActiveModel::Model
  include ActiveModel::FailfastValidation

  failfast_validation :attr_name

  # validates :attr_name, ....
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'failfast_validation'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
