module ActiveModel
  module FailfastValidation
    extend ActiveSupport::Concern

    module EachValidatorExtention
      def validate_each(record, attribute, value)
        if !(respond_to?(:_failfast_validation_attributes) && _failfast_validation_attributes.member?(attribute) && !record.errors[attribute].empty?)
          super(record, attribute, value)
        end
      end
    end

    included do
      def self._failfast_validation_attributes
        @_failfast_validation_attributes ||= []
      end

      def self.failfast_validation(*attrs)
        @_failfast_validation_attributes = attrs
      end

      def valid?(*args)
        self.class.validators.each do |validator|
          validator.define_singleton_method :_failfast_validation_attributes= do |attrs|
            @_failfast_validation_attributes = attrs
          end

          validator.define_singleton_method :_failfast_validation_attributes do
            @_failfast_validation_attributes
          end

          validator._failfast_validation_attributes = self.class._failfast_validation_attributes
          validator.extend(EachValidatorExtention)
        end

        super(*args)
      end
    end
  end
end
