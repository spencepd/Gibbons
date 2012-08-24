require 'test_helper'

class CharityTest < ActiveSupport::TestCase
  fixtures :charities

  test "charities must not be empty" do
    charity = Charity.new(name: charities(:RedCross).name,
                          description: charities(:RedCross).description,
                          financial: charities(:RedCross).financial)
    
    assert charity.valid?
    assert_equal("American Red Cross", charity.name)
    assert_equal(55.35.to_f, charity.financial.to_f)
  end
end
