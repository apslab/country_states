# == Schema Information
# Schema version: 20110513143715
#
# Table name: states
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  population :integer
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_states_on_country_id  (country_id)
#

require 'test_helper'

class StateTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
