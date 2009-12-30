class Main
  helpers do
    class Monk::Glue < Sinatra::Base
      helpers do
        # TODO Add documentation.
        def haml(template, options = {}, locals = {})
          options[:escape_html] = true unless options.include?(:escape_html)
          super(template, options, locals)
        end

        # TODO Add documentation.
        def partial(template, locals = {})
          haml(template, {:layout => false}, locals)
        end
      end
    end
    # Your helpers go here. You can also create another file in app/helpers with the same format.
    # All helpers defined here will be available across all the application.
    #
    # @example A helper method for date formatting.
    #
    #   def format_date(date, format = "%d/%m/%Y")
    #     date.strftime(format)
    #   end
  end
end
