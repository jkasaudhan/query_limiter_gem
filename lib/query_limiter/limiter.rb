module QueryLimiter
    class LimitQuery
        def self.limit_query(max_limit=5)
            puts "Query limit gem limits results of a query by #{max_limit}"
            return max_limit
        end
    end

end