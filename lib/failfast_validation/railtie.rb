module FailfastValidation
  class Railtie < ::Rails::Railtie
    initializer 'failfast_validation' do
      require 'active_model/failfast_validation'
    end
  end
end
