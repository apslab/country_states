# == Schema Information
# Schema version: 20110513143715
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Country < ActiveRecord::Base
  has_many :states

  accepts_nested_attributes_for :states, :allow_destroy => true, :reject_if => :all_blank
end

