module ActiveSupport
  module Cache
    class Store
      def read_and_write_if_nil(key, options = {})
        object = read(key)
        if object.nil?
          object = yield
          write(key, object, options)
        end
        object
      end
    end
  end
end