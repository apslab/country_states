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

class State < ActiveRecord::Base
  belongs_to :country
end
