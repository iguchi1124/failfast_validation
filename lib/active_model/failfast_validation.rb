module ActiveModel
  module FailfastValidation
    extend ActiveSupport::Concern

    module EachValidatorExtention
      def validate_each(record, attribute, value)
        if record.errors[attribute].empty?
          super(record, attribute, value)
        end
      end
    end

    included do
      def valid?(*args)
        self.class.validators.each { |validator| validator.extend(EachValidatorExtention) }

        super(*args)
      end
    end
  end
end
