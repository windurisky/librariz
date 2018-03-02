module Forms
  class Base

    def hashify
      self.as_json.compact.deep_symbolize_keys!
    end

    def hashify_without_id
      hashify.except(:id)
    end

  end
end
