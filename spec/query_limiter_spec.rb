require "query_limiter"

describe QueryLimiter::LimitQuery do
    it "Limit query method is called" do
      expect(QueryLimiter::LimitQuery.limit_query(10)).to eql(10)
    end
end
# To test: bundle exec rspec spec