module Services
  module Book
    class Create
      def initialize(form)
        @form = form
      end

      def run!
        Book.create(@form.hashify)
      end
    end
  end
end
