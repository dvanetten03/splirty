require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do
  	quote = Quote.create(:author => 'Diane Van Etten', :saying => 'Life is a journey, not a destination.')
  	expected = 'DVE#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual

  end
end
