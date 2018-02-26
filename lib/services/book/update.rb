module Services
  module Book
    class Update
      def initialize(form)
        @form = form
      end

      def run!
        ActiveRecord::Base.transaction do
          book = ::Book.lock.find(@form.id)
          raise 'No parameters found' if @form.hashify_without_id.empty?
          book.update_attributes!(@form.hashify_without_id)
          book
        end
      end
    end
  end
end
