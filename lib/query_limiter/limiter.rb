require 'active_record'

ActiveSupport.on_load(:active_record) do
  class ActiveRecord::Base
    def self.query_limiter(options={})
      class_attribute :max_limit

      def self.limiter_scope
        limit(self.max_limit || 5)
      end
      
      unless options[:without_default_scope]
        default_scope { limiter_scope }
      end

      def self.max_query_limit(limit)
        self.max_limit = limit
      end

    end
  end
end

module QueryLimiter
    class LimitQuery
        def self.limit_query(max_limit=5)
            puts "Query limit gem limits results of a query by #{max_limit}"
            return max_limit
        end
    end
end